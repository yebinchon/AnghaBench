
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_end; int vm_start; int vm_pgoff; int * vm_ops; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int DPRINTK (char*) ;
 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int NCP_SERVER (struct inode*) ;
 int PAGE_SHIFT ;
 int VM_SHARED ;
 int file_accessed (struct file*) ;
 int ncp_conn_valid (int ) ;
 int ncp_file_mmap ;

int ncp_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct inode *inode = file->f_path.dentry->d_inode;

 DPRINTK("ncp_mmap: called\n");

 if (!ncp_conn_valid(NCP_SERVER(inode)))
  return -EIO;


 if (vma->vm_flags & VM_SHARED)
  return -EINVAL;


 if (((vma->vm_end - vma->vm_start) >> PAGE_SHIFT) + vma->vm_pgoff
    > (1U << (32 - PAGE_SHIFT)))
  return -EFBIG;

 vma->vm_ops = &ncp_file_mmap;
 file_accessed(file);
 return 0;
}
