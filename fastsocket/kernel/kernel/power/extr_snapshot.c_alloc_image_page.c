
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* alloc_page (int ) ;
 int swsusp_set_page_forbidden (struct page*) ;
 int swsusp_set_page_free (struct page*) ;

__attribute__((used)) static struct page *alloc_image_page(gfp_t gfp_mask)
{
 struct page *page;

 page = alloc_page(gfp_mask);
 if (page) {
  swsusp_set_page_forbidden(page);
  swsusp_set_page_free(page);
 }
 return page;
}
