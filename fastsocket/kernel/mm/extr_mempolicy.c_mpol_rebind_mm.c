
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_policy; struct vm_area_struct* vm_next; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
typedef int nodemask_t ;


 int MPOL_REBIND_ONCE ;
 int down_write (int *) ;
 int mpol_rebind_policy (int ,int *,int ) ;
 int up_write (int *) ;

void mpol_rebind_mm(struct mm_struct *mm, nodemask_t *new)
{
 struct vm_area_struct *vma;

 down_write(&mm->mmap_sem);
 for (vma = mm->mmap; vma; vma = vma->vm_next)
  mpol_rebind_policy(vma->vm_policy, new, MPOL_REBIND_ONCE);
 up_write(&mm->mmap_sem);
}
