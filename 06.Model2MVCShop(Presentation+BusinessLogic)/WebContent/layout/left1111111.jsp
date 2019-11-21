<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset="EUC-KR">

<title>Shop</title>

<link href="/css/left.css" rel="stylesheet" type="text/css">

<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	function history() {
		popWin = window
				.open(
						"/history.jsp",
						"popWin",
						"left=300, top=200, width=300, height=200, marginwidth=0, marginheight=0, scrollbars=no, scrolling=no, menubar=no, resizable=no");
	}

	//==> jQuery ���� �߰��� �κ�
	$(function() {

		//==> ����������ȸ Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('����������ȸ')").on("click", function() {
		//Debug..
		//alert(  $( ".Depth03:contains('����������ȸ')" ).html() );
		$(window.parent.frames["rightFrame"].document.location).attr("href","/user/getUser?userId=${user.userId}");
	});

		//==> ȸ��������ȸ Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('ȸ��������ȸ')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('ȸ��������ȸ')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/user/listUser");
	}); 
		
		//==> �ǸŻ�ǰ��� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('�ǸŻ�ǰ���')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('�ǸŻ�ǰ���')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/product/addProductView");
		}); 

		
		//==> �ǸŻ�ǰ���� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('�ǸŻ�ǰ����')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('�ǸŻ�ǰ����')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/product/listProduct.do?menu=manage");
		}); 
		
		//==> �ǸŻ�ǰ���� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('�ǸŸ����ȸ')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('�ǸŸ����ȸ')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/purchase/listSale.do?menu=manage");
		}); 
		
		
		//==> �ǸŻ�ǰ���� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('�� ǰ �� ��')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('�� ǰ �� ��')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/purchase/listProduct.do?menu=search");
		}); 
		
		//==> �ǸŻ�ǰ���� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$(".Depth03:contains('�����̷���ȸ')").on("click",function() {
		//Debug..
		//alert(  $( ".Depth03:contains('�����̷���ȸ')" ) );
		$(window.parent.frames["rightFrame"].document.location).attr("href", "/purchase//listPurchase.do");
		}); 
		
		


</script>
</head>

<body background="/images/left/imgLeftBg.gif" leftmargin="0"
	topmargin="0" marginwidth="0" marginheight="0">

	<table width="159" border="0" cellspacing="0" cellpadding="0">

		<!--menu 01 line-->
		<tr>
			<td valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="159">
					<tr>
						<C:if test="${!empty user }">
							<tr>
								<td class="Depth03">
									<!-- ////////////////// jQuery Event ó���� ����� ///////////////////////// 
							<a href="/user/getUser?userId=${user.userId}" target="rightFrame">����������ȸ</a>	
							////////////////////////////////////////////////////////////////////////////////////////////////// -->
									����������ȸ
								</td>
							</tr>
						</C:if>
						<c:if test="${user.role == 'admin'}">
							<tr>
								<td class="Depth03"><a href="/listUser.do"
									target="rightFrame">ȸ��������ȸ</a></td>
							</tr>
							</c:if>
							<tr>
						<td class="DepthEnd">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>

<!--menu 02 line-->		
		<c:if test ="${user.role == 'admin'}">

		<tr>
			<td valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="159">
					<tr>
						<td class="Depth03">
						<!--///////////////////////////////////////////////////////////////////
					 <a href="../product/addProductView.jsp;" target="rightFrame">�ǸŻ�ǰ���</a>
					 //////////////////////////////////////////////////////////////////////////////// -->
					 �ǸŻ�ǰ���
					</td>
				</tr>
				<tr>
					<td class="Depth03">
					<!--////////////////////////////////////////////////////////////////////////
					 <a href="/listProduct.do?menu=manage" target="rightFrame">�ǸŻ�ǰ����</a> 
					 ///////////////////////////////////////////////////////////////////////////////-->
					 �ǸŻ�ǰ����
					</td>
					</tr>
					<tr>
					<td class="Depth03">
					<!--//////////////////////////////////////////////////////////////////////
					 <a href="/listSale.do?menu=manage" target="rightFrame">�ǸŸ����ȸ</a> 
					 ////////////////////////////////////////////////////////////////////////-->
					 �ǸŸ����ȸ
						</td>
					</tr>
					<tr>
						<td class="DepthEnd">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</c:if>

		<!--menu 03 line-->
		<tr>
			<td valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="159">
					<tr>
						<td class="Depth03"><a href="/listProduct.do?menu=search"
							target="rightFrame">�� ǰ �� ��</a></td>
					</tr>
					<c:if test = "${!empty user && user.role == 'user' }">
					<tr>
						<td class="Depth03"><a href="/listPurchase.do"
							target="rightFrame">�����̷���ȸ</a></td>
					</tr>
					</c:if>
					<tr>
						<td class="DepthEnd">&nbsp;</td>
					</tr>
					<tr>
						<td class="Depth03"><a href="javascript:history()">�ֱ� ����ǰ</a></td>
					</tr>
				</table>
			</td>
		</tr>

	</table>
</body>
</html>