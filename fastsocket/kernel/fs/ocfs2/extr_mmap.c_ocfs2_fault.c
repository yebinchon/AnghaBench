
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {int page; int pgoff; } ;
struct vm_area_struct {int dummy; } ;
typedef int sigset_t ;


 int VM_FAULT_SIGBUS ;
 int filemap_fault (struct vm_area_struct*,struct vm_fault*) ;
 int mlog_entry (char*,struct vm_area_struct*,int ) ;
 int mlog_errno (int) ;
 int mlog_exit_ptr (int ) ;
 int ocfs2_vm_op_block_sigs (int *,int *) ;
 int ocfs2_vm_op_unblock_sigs (int *) ;

__attribute__((used)) static int ocfs2_fault(struct vm_area_struct *area, struct vm_fault *vmf)
{
 sigset_t blocked, oldset;
 int error, ret;

 mlog_entry("(area=%p, page offset=%lu)\n", area, vmf->pgoff);

 error = ocfs2_vm_op_block_sigs(&blocked, &oldset);
 if (error < 0) {
  mlog_errno(error);
  ret = VM_FAULT_SIGBUS;
  goto out;
 }

 ret = filemap_fault(area, vmf);

 error = ocfs2_vm_op_unblock_sigs(&oldset);
 if (error < 0)
  mlog_errno(error);
out:
 mlog_exit_ptr(vmf->page);
 return ret;
}
