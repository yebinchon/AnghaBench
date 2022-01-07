
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* bad_page ;
 struct page* fault_page ;
 struct page* hwpoison_page ;

int is_error_page(struct page *page)
{
 return page == bad_page || page == hwpoison_page || page == fault_page;
}
