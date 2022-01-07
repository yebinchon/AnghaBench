
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ctl {scalar_t__ cur; scalar_t__ orig; scalar_t__ index; scalar_t__ num_pages; } ;


 int ENOSPC ;
 int PAGE_CACHE_SIZE ;
 int io_ctl_map_page (struct io_ctl*,int ) ;
 int io_ctl_set_crc (struct io_ctl*,scalar_t__) ;
 int memcpy (scalar_t__,void*,int ) ;

__attribute__((used)) static int io_ctl_add_bitmap(struct io_ctl *io_ctl, void *bitmap)
{
 if (!io_ctl->cur)
  return -ENOSPC;





 if (io_ctl->cur != io_ctl->orig) {
  io_ctl_set_crc(io_ctl, io_ctl->index - 1);
  if (io_ctl->index >= io_ctl->num_pages)
   return -ENOSPC;
  io_ctl_map_page(io_ctl, 0);
 }

 memcpy(io_ctl->cur, bitmap, PAGE_CACHE_SIZE);
 io_ctl_set_crc(io_ctl, io_ctl->index - 1);
 if (io_ctl->index < io_ctl->num_pages)
  io_ctl_map_page(io_ctl, 0);
 return 0;
}
