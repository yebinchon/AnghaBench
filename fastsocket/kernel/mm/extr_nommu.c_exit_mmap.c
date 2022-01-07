
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; scalar_t__ total_vm; } ;


 int delete_vma (struct mm_struct*,struct vm_area_struct*) ;
 int delete_vma_from_mm (struct vm_area_struct*) ;
 int kenter (char*) ;
 int kleave (char*) ;

void exit_mmap(struct mm_struct *mm)
{
 struct vm_area_struct *vma;

 if (!mm)
  return;

 kenter("");

 mm->total_vm = 0;

 while ((vma = mm->mmap)) {
  mm->mmap = vma->vm_next;
  delete_vma_from_mm(vma);
  delete_vma(mm, vma);
 }

 kleave("");
}
