
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct inode {int dummy; } ;
struct fuse_inode {int write_files; } ;
struct fuse_file {int write_entry; } ;
struct fuse_conn {int lock; } ;
struct file {struct fuse_file* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int VM_MAYWRITE ;
 int VM_SHARED ;
 int file_accessed (struct file*) ;
 int fuse_file_vm_ops ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fuse_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 if ((vma->vm_flags & VM_SHARED) && (vma->vm_flags & VM_MAYWRITE)) {
  struct inode *inode = file->f_dentry->d_inode;
  struct fuse_conn *fc = get_fuse_conn(inode);
  struct fuse_inode *fi = get_fuse_inode(inode);
  struct fuse_file *ff = file->private_data;




  spin_lock(&fc->lock);
  if (list_empty(&ff->write_entry))
   list_add(&ff->write_entry, &fi->write_files);
  spin_unlock(&fc->lock);
 }
 file_accessed(file);
 vma->vm_ops = &fuse_file_vm_ops;
 return 0;
}
