
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ctl {int cur; int index; } ;
struct btrfs_free_space {int bitmap; } ;


 int PAGE_CACHE_SIZE ;
 int io_ctl_check_crc (struct io_ctl*,int ) ;
 int io_ctl_unmap_page (struct io_ctl*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int io_ctl_read_bitmap(struct io_ctl *io_ctl,
         struct btrfs_free_space *entry)
{
 int ret;

 ret = io_ctl_check_crc(io_ctl, io_ctl->index);
 if (ret)
  return ret;

 memcpy(entry->bitmap, io_ctl->cur, PAGE_CACHE_SIZE);
 io_ctl_unmap_page(io_ctl);

 return 0;
}
