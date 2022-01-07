
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_ordered_extent {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {struct inode* host; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 int EXTENT_DELALLOC ;
 int EXTENT_DIRTY ;
 int EXTENT_DO_ACCOUNTING ;
 int EXTENT_LOCKED ;
 int GFP_NOFS ;
 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ TestClearPagePrivate2 (struct page*) ;
 int __btrfs_releasepage (struct page*,int ) ;
 scalar_t__ btrfs_dec_test_ordered_pending (struct inode*,struct btrfs_ordered_extent**,scalar_t__,scalar_t__,int) ;
 int btrfs_finish_ordered_io (struct btrfs_ordered_extent*) ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_extent (struct inode*,scalar_t__) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_releasepage (struct page*,int ) ;
 int clear_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__,int,int,int,struct extent_state**,int ) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,int ,struct extent_state**) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_offset (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static void btrfs_invalidatepage(struct page *page, unsigned long offset)
{
 struct inode *inode = page->mapping->host;
 struct extent_io_tree *tree;
 struct btrfs_ordered_extent *ordered;
 struct extent_state *cached_state = ((void*)0);
 u64 page_start = page_offset(page);
 u64 page_end = page_start + PAGE_CACHE_SIZE - 1;
 wait_on_page_writeback(page);

 tree = &BTRFS_I(inode)->io_tree;
 if (offset) {
  btrfs_releasepage(page, GFP_NOFS);
  return;
 }
 lock_extent_bits(tree, page_start, page_end, 0, &cached_state);
 ordered = btrfs_lookup_ordered_extent(inode,
        page_offset(page));
 if (ordered) {




  clear_extent_bit(tree, page_start, page_end,
     EXTENT_DIRTY | EXTENT_DELALLOC |
     EXTENT_LOCKED | EXTENT_DO_ACCOUNTING, 1, 0,
     &cached_state, GFP_NOFS);




  if (TestClearPagePrivate2(page) &&
      btrfs_dec_test_ordered_pending(inode, &ordered, page_start,
         PAGE_CACHE_SIZE, 1)) {
   btrfs_finish_ordered_io(ordered);
  }
  btrfs_put_ordered_extent(ordered);
  cached_state = ((void*)0);
  lock_extent_bits(tree, page_start, page_end, 0, &cached_state);
 }
 clear_extent_bit(tree, page_start, page_end,
   EXTENT_LOCKED | EXTENT_DIRTY | EXTENT_DELALLOC |
   EXTENT_DO_ACCOUNTING, 1, 1, &cached_state, GFP_NOFS);
 __btrfs_releasepage(page, GFP_NOFS);

 ClearPageChecked(page);
 if (PagePrivate(page)) {
  ClearPagePrivate(page);
  set_page_private(page, 0);
  page_cache_release(page);
 }
}
