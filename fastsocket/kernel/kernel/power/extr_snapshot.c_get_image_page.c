
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int allocated_unsafe_pages ;
 scalar_t__ get_zeroed_page (int ) ;
 scalar_t__ swsusp_page_is_free (int ) ;
 int swsusp_set_page_forbidden (int ) ;
 int swsusp_set_page_free (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static void *get_image_page(gfp_t gfp_mask, int safe_needed)
{
 void *res;

 res = (void *)get_zeroed_page(gfp_mask);
 if (safe_needed)
  while (res && swsusp_page_is_free(virt_to_page(res))) {

   swsusp_set_page_forbidden(virt_to_page(res));
   allocated_unsafe_pages++;
   res = (void *)get_zeroed_page(gfp_mask);
  }
 if (res) {
  swsusp_set_page_forbidden(virt_to_page(res));
  swsusp_set_page_free(virt_to_page(res));
 }
 return res;
}
