<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<spring:eval expression="@property.getProperty('category.url')" var="urlcategory"/>
<spring:eval expression="@property.getProperty('product.url')" var="urlChooseCategory"/>
<spring:eval expression="@property.getProperty('user.url')" var="urluser"/>
<spring:eval expression="@property.getProperty('order.url.chuagiao')" var="urlchuagiao"/>
<spring:eval expression="@property.getProperty('page.page')" var="pageProp"/>
<spring:eval expression="@property.getProperty('page.maxPageItem')" var="maxPageItemProp"/>
<spring:eval expression="@property.getProperty('thongke.url')" var="urlThongKe"/>
<c:url var="thongke_url" value="${urlThongKe}"/>
<c:url var="url_order_chuagiao" value="${urlchuagiao}"/>
<c:url var="url_category" value="${urlcategory}"/>
<c:url var="url_product" value="${urlChooseCategory}"/>
<c:url var="url_user" value="${urluser}"/>
<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>
    <div class="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <a href="${thongke_url}"><i class="ace-icon fa fa-signal"></i></a>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>
        <div class="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <ul class="nav nav-list">
        <li>
            <a class="dropdown-toggle disabled" style="color: #1a1a1a">
                <i class="menu-icon fa fa-sliders"></i>
                <span class="menu-text"></span>
                Quản lý
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
<%--            <ul class="submenu">--%>
                <li>
                    <a href="${url_category}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="menu-icon fa fa-list"></i>
                        Danh mục
                    </a>
                    <b class="arrow"></b>
                </li>
                <li>
                    <a href="${url_product}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="menu-icon fa fa-product-hunt"></i>
                        Sản Phẩm
                    </a>
                    <b class="arrow"></b>
                </li>
                <li>
                    <a href="${url_order_chuagiao}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="menu-icon fa fa-bookmark"></i>
                        Đơn hàng
                    </a>
                    <b class="arrow"></b>
                </li>
                <li>
                    <a href="${url_user}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="menu-icon fa fa-users"></i>
                        Người Dùng
                    </a>
                    <b class="arrow"></b>
                </li>
                <li>
                    <a href="${thongke_url}">
                        <i class="menu-icon fa fa-file-code-o"></i>
                        Thống Kê
                    </a>
                    <b class="arrow"></b>
                </li>

<%--            </ul>--%>
        </li>
    </ul>
<%--    <div class="sidebar-toggle sidebar-collapse">--%>
<%--        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left"--%>
<%--           data-icon2="ace-icon fa fa-angle-double-right"></i>--%>
<%--    </div>--%>
</div>