
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_fault {struct page* page; } ;
struct vm_area_struct {TYPE_4__* vm_file; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; TYPE_3__* i_sb; } ;
typedef int loff_t ;
typedef int get_block_t ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_8__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {scalar_t__ s_frozen; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int EAGAIN ;
 int EFAULT ;
 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 unsigned long PAGE_CACHE_SIZE ;
 scalar_t__ SB_UNFROZEN ;
 int block_commit_write (struct page*,int ,unsigned long) ;
 int block_prepare_write (struct page*,int ,unsigned long,int ) ;
 int file_update_time (TYPE_4__*) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int page_offset (struct page*) ;
 int sb_has_new_freeze (TYPE_3__*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;

int __block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
    get_block_t get_block)
{
 struct page *page = vmf->page;
 struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
 unsigned long end;
 loff_t size;
 int ret;





 file_update_time(vma->vm_file);

 lock_page(page);
 size = i_size_read(inode);
 if ((page->mapping != inode->i_mapping) ||
     (page_offset(page) > size)) {

  ret = -EFAULT;
  goto out_unlock;
 }


 if (((page->index + 1) << PAGE_CACHE_SHIFT) > size)
  end = size & ~PAGE_CACHE_MASK;
 else
  end = PAGE_CACHE_SIZE;

 ret = block_prepare_write(page, 0, end, get_block);
 if (!ret)
  ret = block_commit_write(page, 0, end);

 if (unlikely(ret < 0))
  goto out_unlock;
 set_page_dirty(page);
 if (!sb_has_new_freeze(inode->i_sb) && inode->i_sb->s_frozen != SB_UNFROZEN) {
  ret = -EAGAIN;
  goto out_unlock;
 }
 wait_for_stable_page(page);
 return 0;
out_unlock:
 unlock_page(page);
 return ret;
}
