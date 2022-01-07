
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct hstate {int resv_huge_pages; } ;


 int HPAGE_RESV_OWNER ;
 int VM_MAYSHARE ;
 int VM_NORESERVE ;
 scalar_t__ is_vma_resv_set (struct vm_area_struct*,int ) ;

__attribute__((used)) static void decrement_hugepage_resv_vma(struct hstate *h,
   struct vm_area_struct *vma)
{
 if (vma->vm_flags & VM_NORESERVE)
  return;

 if (vma->vm_flags & VM_MAYSHARE) {

  h->resv_huge_pages--;
 } else if (is_vma_resv_set(vma, HPAGE_RESV_OWNER)) {




  h->resv_huge_pages--;
 }
}
