
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_fault {struct page* page; } ;
struct vm_area_struct {TYPE_3__* vm_file; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sigset_t ;
struct TYPE_8__ {int ip_alloc_sem; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 TYPE_4__* OCFS2_I (struct inode*) ;
 int VM_FAULT_SIGBUS ;
 int __ocfs2_page_mkwrite (struct inode*,struct buffer_head*,struct page*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_vm_op_block_sigs (int *,int *) ;
 int ocfs2_vm_op_unblock_sigs (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
 struct buffer_head *di_bh = ((void*)0);
 sigset_t blocked, oldset;
 int ret, ret2;

 ret = ocfs2_vm_op_block_sigs(&blocked, &oldset);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }






 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }






 down_write(&OCFS2_I(inode)->ip_alloc_sem);

 ret = __ocfs2_page_mkwrite(inode, di_bh, page);

 up_write(&OCFS2_I(inode)->ip_alloc_sem);

 brelse(di_bh);
 ocfs2_inode_unlock(inode, 1);

out:
 ret2 = ocfs2_vm_op_unblock_sigs(&oldset);
 if (ret2 < 0)
  mlog_errno(ret2);
 if (ret)
  ret = VM_FAULT_SIGBUS;
 return ret;
}
