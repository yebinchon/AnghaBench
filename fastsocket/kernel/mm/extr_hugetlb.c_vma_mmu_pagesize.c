
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 unsigned long vma_kernel_pagesize (struct vm_area_struct*) ;

unsigned long vma_mmu_pagesize(struct vm_area_struct *vma)
{
 return vma_kernel_pagesize(vma);
}
