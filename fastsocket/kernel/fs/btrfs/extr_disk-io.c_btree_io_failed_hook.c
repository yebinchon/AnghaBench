
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {scalar_t__ private; TYPE_1__* mapping; } ;
struct extent_buffer {int read_mirror; int start; int bflags; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* BTRFS_I (int ) ;
 int EIO ;
 int EXTENT_BUFFER_IOERR ;
 int EXTENT_BUFFER_READAHEAD ;
 int btree_readahead_hook (struct btrfs_root*,struct extent_buffer*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int btree_io_failed_hook(struct page *page, int failed_mirror)
{
 struct extent_buffer *eb;
 struct btrfs_root *root = BTRFS_I(page->mapping->host)->root;

 eb = (struct extent_buffer *)page->private;
 set_bit(EXTENT_BUFFER_IOERR, &eb->bflags);
 eb->read_mirror = failed_mirror;
 if (test_and_clear_bit(EXTENT_BUFFER_READAHEAD, &eb->bflags))
  btree_readahead_hook(root, eb, eb->start, -EIO);
 return -EIO;
}
