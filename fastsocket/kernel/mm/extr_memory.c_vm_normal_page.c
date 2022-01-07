
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_pgoff; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 scalar_t__ HAVE_PTE_SPECIAL ;
 unsigned long PAGE_SHIFT ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 unsigned long highest_memmap_pfn ;
 int is_cow_mapping (int) ;
 scalar_t__ is_zero_pfn (unsigned long) ;
 scalar_t__ likely (int) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int print_bad_pte (struct vm_area_struct*,unsigned long,int ,int *) ;
 unsigned long pte_pfn (int ) ;
 int pte_special (int ) ;
 scalar_t__ unlikely (int) ;

struct page *vm_normal_page(struct vm_area_struct *vma, unsigned long addr,
    pte_t pte)
{
 unsigned long pfn = pte_pfn(pte);

 if (HAVE_PTE_SPECIAL) {
  if (likely(!pte_special(pte)))
   goto check_pfn;
  if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
   return ((void*)0);
  if (!is_zero_pfn(pfn))
   print_bad_pte(vma, addr, pte, ((void*)0));
  return ((void*)0);
 }



 if (unlikely(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP))) {
  if (vma->vm_flags & VM_MIXEDMAP) {
   if (!pfn_valid(pfn))
    return ((void*)0);
   goto out;
  } else {
   unsigned long off;
   off = (addr - vma->vm_start) >> PAGE_SHIFT;
   if (pfn == vma->vm_pgoff + off)
    return ((void*)0);
   if (!is_cow_mapping(vma->vm_flags))
    return ((void*)0);
  }
 }

 if (is_zero_pfn(pfn))
  return ((void*)0);
check_pfn:
 if (unlikely(pfn > highest_memmap_pfn)) {
  print_bad_pte(vma, addr, pte, ((void*)0));
  return ((void*)0);
 }





out:
 return pfn_to_page(pfn);
}
