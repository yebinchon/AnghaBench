
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; scalar_t__ vm_pgoff; struct file* vm_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int host; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 long EACCES ;
 long EINVAL ;
 int PAGE_SHIFT ;
 int VM_HUGETLB ;
 int VM_LOCKED ;
 int VM_NONLINEAR ;
 int VM_SHARED ;
 int VM_WRITE ;
 TYPE_2__* current ;
 int down_read (int *) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 int up_read (int *) ;
 int vmtruncate_range (int ,int,int) ;

__attribute__((used)) static long madvise_remove(struct vm_area_struct *vma,
    struct vm_area_struct **prev,
    unsigned long start, unsigned long end)
{
 struct address_space *mapping;
 loff_t offset, endoff;
 int error;
 struct file *f;

 *prev = ((void*)0);

 if (vma->vm_flags & (VM_LOCKED|VM_NONLINEAR|VM_HUGETLB))
  return -EINVAL;

 f = vma->vm_file;

 if (!f || !f->f_mapping || !f->f_mapping->host) {
   return -EINVAL;
 }

 if ((vma->vm_flags & (VM_SHARED|VM_WRITE)) != (VM_SHARED|VM_WRITE))
  return -EACCES;

 mapping = f->f_mapping;

 offset = (loff_t)(start - vma->vm_start)
   + ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
 endoff = (loff_t)(end - vma->vm_start - 1)
   + ((loff_t)vma->vm_pgoff << PAGE_SHIFT);






 get_file(f);
 up_read(&current->mm->mmap_sem);
 error = vmtruncate_range(mapping->host, offset, endoff);
 fput(f);
 down_read(&current->mm->mmap_sem);
 return error;
}
