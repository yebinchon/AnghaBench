
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {struct page* page; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {unsigned long index; struct address_space* mapping; } ;
struct inode {int i_sb; struct address_space* i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct address_space {int dummy; } ;
typedef unsigned long loff_t ;
typedef int handle_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int DELALLOC ;
 int ENOSPC ;
 int EXT4_STATE_JDATA ;
 scalar_t__ IS_ERR (int *) ;
 unsigned long PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 unsigned long PAGE_CACHE_SIZE ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int __block_page_mkwrite (struct vm_area_struct*,struct vm_fault*,int ) ;
 int block_page_mkwrite_return (int) ;
 int do_journal_get_write_access ;
 int ext4_bh_unmapped ;
 int ext4_da_get_block_prep ;
 int ext4_get_block ;
 int * ext4_journal_start (struct inode*,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_nonda_switch (int ) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 unsigned long i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 unsigned long page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 scalar_t__ test_opt (int ,int ) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;
 scalar_t__ walk_page_buffers (int *,int ,int ,unsigned long,int *,int ) ;

int ext4_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 loff_t size;
 unsigned long len;
 int ret;
 struct file *file = vma->vm_file;
 struct inode *inode = file->f_path.dentry->d_inode;
 struct address_space *mapping = inode->i_mapping;
 handle_t *handle;
 int retries = 0;

 sb_start_pagefault(inode->i_sb);

 if (test_opt(inode->i_sb, DELALLOC) &&
     !ext4_should_journal_data(inode) &&
     !ext4_nonda_switch(inode->i_sb)) {
  do {
   ret = __block_page_mkwrite(vma, vmf,
         ext4_da_get_block_prep);
  } while (ret == -ENOSPC &&
   ext4_should_retry_alloc(inode->i_sb, &retries));
  goto out_ret;
 }

 lock_page(page);
 size = i_size_read(inode);

 if (page->mapping != mapping || page_offset(page) > size) {
  unlock_page(page);
  ret = VM_FAULT_NOPAGE;
  goto out;
 }

 if (page->index == size >> PAGE_CACHE_SHIFT)
  len = size & ~PAGE_CACHE_MASK;
 else
  len = PAGE_CACHE_SIZE;




 if (page_has_buffers(page)) {
  if (!walk_page_buffers(((void*)0), page_buffers(page), 0, len, ((void*)0),
     ext4_bh_unmapped)) {

   wait_for_stable_page(page);
   ret = VM_FAULT_LOCKED;
   goto out;
  }
 }
 unlock_page(page);

retry_alloc:
 handle = ext4_journal_start(inode, ext4_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = VM_FAULT_SIGBUS;
  goto out;
 }
 ret = __block_page_mkwrite(vma, vmf, ext4_get_block);
 if (!ret && ext4_should_journal_data(inode)) {
  if (walk_page_buffers(handle, page_buffers(page), 0,
     PAGE_CACHE_SIZE, ((void*)0), do_journal_get_write_access)) {
   unlock_page(page);
   ret = VM_FAULT_SIGBUS;
   goto out;
  }
  ext4_set_inode_state(inode, EXT4_STATE_JDATA);
 }
 ext4_journal_stop(handle);
 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry_alloc;
out_ret:
 ret = block_page_mkwrite_return(ret);
out:
 sb_end_pagefault(inode->i_sb);
        return ret;
}
