
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct file* vm_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int i_mmap_lock; } ;


 int __remove_shared_vm_struct (struct vm_area_struct*,struct file*,struct address_space*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void unlink_file_vma(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;

 if (file) {
  struct address_space *mapping = file->f_mapping;
  spin_lock(&mapping->i_mmap_lock);
  __remove_shared_vm_struct(vma, file, mapping);
  spin_unlock(&mapping->i_mmap_lock);
 }
}
