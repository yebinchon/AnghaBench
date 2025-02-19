
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ctl {int num_pages; scalar_t__* pages; } ;


 int ClearPageChecked (scalar_t__) ;
 int io_ctl_unmap_page (struct io_ctl*) ;
 int page_cache_release (scalar_t__) ;
 int unlock_page (scalar_t__) ;

__attribute__((used)) static void io_ctl_drop_pages(struct io_ctl *io_ctl)
{
 int i;

 io_ctl_unmap_page(io_ctl);

 for (i = 0; i < io_ctl->num_pages; i++) {
  if (io_ctl->pages[i]) {
   ClearPageChecked(io_ctl->pages[i]);
   unlock_page(io_ctl->pages[i]);
   page_cache_release(io_ctl->pages[i]);
  }
 }
}
