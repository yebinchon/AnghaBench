
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct file {int f_mapping; } ;


 int ENODEV ;
 int VM_MAYSHARE ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int invalidate_inode_pages2 (int ) ;

__attribute__((used)) static int fuse_direct_mmap(struct file *file, struct vm_area_struct *vma)
{

 if (vma->vm_flags & VM_MAYSHARE)
  return -ENODEV;

 invalidate_inode_pages2(file->f_mapping);

 return generic_file_mmap(file, vma);
}
