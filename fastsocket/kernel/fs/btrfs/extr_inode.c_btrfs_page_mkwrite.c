
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u64 ;
struct vm_fault {struct page* page; } ;
struct vm_area_struct {int vm_file; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; int i_sb; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_root {int log_transid; TYPE_1__* fs_info; } ;
struct btrfs_ordered_extent {int dummy; } ;
typedef unsigned long loff_t ;
struct TYPE_6__ {struct btrfs_root* root; int last_sub_trans; int last_trans; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int generation; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int ClearPageChecked (struct page*) ;
 int ENOMEM ;
 int EXTENT_DELALLOC ;
 int EXTENT_DIRTY ;
 int EXTENT_DO_ACCOUNTING ;
 int GFP_NOFS ;
 unsigned long PAGE_CACHE_MASK ;
 unsigned long PAGE_CACHE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int btrfs_delalloc_release_space (struct inode*,unsigned long) ;
 int btrfs_delalloc_reserve_space (struct inode*,unsigned long) ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_extent (struct inode*,unsigned long) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_set_extent_delalloc (struct inode*,unsigned long,unsigned long,struct extent_state**) ;
 int btrfs_start_ordered_extent (struct inode*,struct btrfs_ordered_extent*,int) ;
 int btrfs_update_time (int ) ;
 int clear_extent_bit (struct extent_io_tree*,unsigned long,unsigned long,int,int ,int ,struct extent_state**,int ) ;
 TYPE_2__* fdentry (int ) ;
 int flush_dcache_page (struct page*) ;
 unsigned long i_size_read (struct inode*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int lock_extent_bits (struct extent_io_tree*,unsigned long,unsigned long,int ,struct extent_state**) ;
 int lock_page (struct page*) ;
 int memset (char*,int ,unsigned long) ;
 unsigned long page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int set_page_dirty (struct page*) ;
 int set_page_extent_mapped (struct page*) ;
 int unlock_extent_cached (struct extent_io_tree*,unsigned long,unsigned long,struct extent_state**,int ) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

int btrfs_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct inode *inode = fdentry(vma->vm_file)->d_inode;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct extent_io_tree *io_tree = &BTRFS_I(inode)->io_tree;
 struct btrfs_ordered_extent *ordered;
 struct extent_state *cached_state = ((void*)0);
 char *kaddr;
 unsigned long zero_start;
 loff_t size;
 int ret;
 int reserved = 0;
 u64 page_start;
 u64 page_end;

 sb_start_pagefault(inode->i_sb);
 ret = btrfs_delalloc_reserve_space(inode, PAGE_CACHE_SIZE);
 if (!ret) {
  ret = btrfs_update_time(vma->vm_file);
  reserved = 1;
 }
 if (ret) {
  if (ret == -ENOMEM)
   ret = VM_FAULT_OOM;
  else
   ret = VM_FAULT_SIGBUS;
  if (reserved)
   goto out;
  goto out_noreserve;
 }

 ret = VM_FAULT_NOPAGE;
again:
 lock_page(page);
 size = i_size_read(inode);
 page_start = page_offset(page);
 page_end = page_start + PAGE_CACHE_SIZE - 1;

 if ((page->mapping != inode->i_mapping) ||
     (page_start >= size)) {

  goto out_unlock;
 }
 wait_on_page_writeback(page);

 lock_extent_bits(io_tree, page_start, page_end, 0, &cached_state);
 set_page_extent_mapped(page);





 ordered = btrfs_lookup_ordered_extent(inode, page_start);
 if (ordered) {
  unlock_extent_cached(io_tree, page_start, page_end,
         &cached_state, GFP_NOFS);
  unlock_page(page);
  btrfs_start_ordered_extent(inode, ordered, 1);
  btrfs_put_ordered_extent(ordered);
  goto again;
 }
 clear_extent_bit(&BTRFS_I(inode)->io_tree, page_start, page_end,
     EXTENT_DIRTY | EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING,
     0, 0, &cached_state, GFP_NOFS);

 ret = btrfs_set_extent_delalloc(inode, page_start, page_end,
     &cached_state);
 if (ret) {
  unlock_extent_cached(io_tree, page_start, page_end,
         &cached_state, GFP_NOFS);
  ret = VM_FAULT_SIGBUS;
  goto out_unlock;
 }
 ret = 0;


 if (page_start + PAGE_CACHE_SIZE > size)
  zero_start = size & ~PAGE_CACHE_MASK;
 else
  zero_start = PAGE_CACHE_SIZE;

 if (zero_start != PAGE_CACHE_SIZE) {
  kaddr = kmap(page);
  memset(kaddr + zero_start, 0, PAGE_CACHE_SIZE - zero_start);
  flush_dcache_page(page);
  kunmap(page);
 }
 ClearPageChecked(page);
 set_page_dirty(page);
 SetPageUptodate(page);

 BTRFS_I(inode)->last_trans = root->fs_info->generation;
 BTRFS_I(inode)->last_sub_trans = BTRFS_I(inode)->root->log_transid;

 unlock_extent_cached(io_tree, page_start, page_end, &cached_state, GFP_NOFS);

out_unlock:
 if (!ret) {
  sb_end_pagefault(inode->i_sb);
  return VM_FAULT_LOCKED;
 }
 unlock_page(page);
out:
 btrfs_delalloc_release_space(inode, PAGE_CACHE_SIZE);
out_noreserve:
 sb_end_pagefault(inode->i_sb);
 return ret;
}
