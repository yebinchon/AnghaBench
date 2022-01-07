
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int EINVAL ;
 int VM_IO ;
 int VM_PFNMAP ;
 int follow_pte (int ,unsigned long,int **,int **) ;
 unsigned long pte_pfn (int ) ;
 int pte_unmap_unlock (int *,int *) ;

int follow_pfn(struct vm_area_struct *vma, unsigned long address,
 unsigned long *pfn)
{
 int ret = -EINVAL;
 spinlock_t *ptl;
 pte_t *ptep;

 if (!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
  return ret;

 ret = follow_pte(vma->vm_mm, address, &ptep, &ptl);
 if (ret)
  return ret;
 *pfn = pte_pfn(*ptep);
 pte_unmap_unlock(ptep, ptl);
 return 0;
}
