
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_file; int vm_flags; } ;
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int i_mmap_lock; } ;


 int VM_MAYSHARE ;
 int __unmap_hugepage_range (struct vm_area_struct*,unsigned long,unsigned long,struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void unmap_hugepage_range(struct vm_area_struct *vma, unsigned long start,
     unsigned long end, struct page *ref_page)
{
 spin_lock(&vma->vm_file->f_mapping->i_mmap_lock);
 __unmap_hugepage_range(vma, start, end, ref_page);
 vma->vm_flags &= ~VM_MAYSHARE;
 spin_unlock(&vma->vm_file->f_mapping->i_mmap_lock);
}
