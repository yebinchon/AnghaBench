
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;


 scalar_t__ PMD_SIZE ;
 int free_pgd_range (struct mmu_gather*,unsigned long,scalar_t__,unsigned long,unsigned long) ;
 int hugetlb_free_pgd_range (struct mmu_gather*,unsigned long,scalar_t__,unsigned long,unsigned long) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int unlink_anon_vmas (struct vm_area_struct*) ;
 int unlink_file_vma (struct vm_area_struct*) ;

void free_pgtables(struct mmu_gather *tlb, struct vm_area_struct *vma,
  unsigned long floor, unsigned long ceiling)
{
 while (vma) {
  struct vm_area_struct *next = vma->vm_next;
  unsigned long addr = vma->vm_start;





  unlink_anon_vmas(vma);
  unlink_file_vma(vma);

  if (is_vm_hugetlb_page(vma)) {
   hugetlb_free_pgd_range(tlb, addr, vma->vm_end,
    floor, next? next->vm_start: ceiling);
  } else {



   while (next && next->vm_start <= vma->vm_end + PMD_SIZE
          && !is_vm_hugetlb_page(next)) {
    vma = next;
    next = vma->vm_next;
    unlink_anon_vmas(vma);
    unlink_file_vma(vma);
   }
   free_pgd_range(tlb, addr, vma->vm_end,
    floor, next? next->vm_start: ceiling);
  }
  vma = next;
 }
}
