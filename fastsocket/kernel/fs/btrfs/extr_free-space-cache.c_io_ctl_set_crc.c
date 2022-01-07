
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct io_ctl {int num_pages; int * pages; scalar_t__ orig; int root; int check_crcs; } ;


 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ btrfs_csum_data (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int btrfs_csum_final (scalar_t__,char*) ;
 int io_ctl_unmap_page (struct io_ctl*) ;
 scalar_t__* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static void io_ctl_set_crc(struct io_ctl *io_ctl, int index)
{
 u32 *tmp;
 u32 crc = ~(u32)0;
 unsigned offset = 0;

 if (!io_ctl->check_crcs) {
  io_ctl_unmap_page(io_ctl);
  return;
 }

 if (index == 0)
  offset = sizeof(u32) * io_ctl->num_pages;

 crc = btrfs_csum_data(io_ctl->root, io_ctl->orig + offset, crc,
         PAGE_CACHE_SIZE - offset);
 btrfs_csum_final(crc, (char *)&crc);
 io_ctl_unmap_page(io_ctl);
 tmp = kmap(io_ctl->pages[0]);
 tmp += index;
 *tmp = crc;
 kunmap(io_ctl->pages[0]);
}
