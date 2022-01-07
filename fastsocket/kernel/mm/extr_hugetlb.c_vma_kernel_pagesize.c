
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct hstate {unsigned long order; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;

unsigned long vma_kernel_pagesize(struct vm_area_struct *vma)
{
 struct hstate *hstate;

 if (!is_vm_hugetlb_page(vma))
  return PAGE_SIZE;

 hstate = hstate_vma(vma);

 return 1UL << (hstate->order + PAGE_SHIFT);
}
