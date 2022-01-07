
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct io_ctl {int num_pages; int check_crcs; struct btrfs_root* root; int pages; } ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;


 scalar_t__ BTRFS_FREE_INO_OBJECTID ;
 int ENOMEM ;
 int GFP_NOFS ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ btrfs_ino (struct inode*) ;
 int i_size_read (struct inode*) ;
 int kzalloc (int,int ) ;
 int memset (struct io_ctl*,int ,int) ;

__attribute__((used)) static int io_ctl_init(struct io_ctl *io_ctl, struct inode *inode,
         struct btrfs_root *root)
{
 memset(io_ctl, 0, sizeof(struct io_ctl));
 io_ctl->num_pages = (i_size_read(inode) + PAGE_CACHE_SIZE - 1) >>
  PAGE_CACHE_SHIFT;
 io_ctl->pages = kzalloc(sizeof(struct page *) * io_ctl->num_pages,
    GFP_NOFS);
 if (!io_ctl->pages)
  return -ENOMEM;
 io_ctl->root = root;
 if (btrfs_ino(inode) != BTRFS_FREE_INO_OBJECTID)
  io_ctl->check_crcs = 1;
 return 0;
}
