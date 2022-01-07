
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct proc_maps_private {struct vm_area_struct* tail_vma; } ;
struct mm_struct {int mmap_sem; } ;


 int mmput (struct mm_struct*) ;
 int up_read (int *) ;

__attribute__((used)) static void vma_stop(struct proc_maps_private *priv, struct vm_area_struct *vma)
{
 if (vma && vma != priv->tail_vma) {
  struct mm_struct *mm = vma->vm_mm;
  up_read(&mm->mmap_sem);
  mmput(mm);
 }
}
