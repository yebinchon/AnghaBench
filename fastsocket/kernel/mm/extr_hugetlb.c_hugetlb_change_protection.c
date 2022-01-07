
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_file; struct mm_struct* vm_mm; } ;
struct mm_struct {int page_table_lock; } ;
struct hstate {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int i_mmap_lock; } ;


 int BUG_ON (int) ;
 int flush_cache_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 scalar_t__ huge_page_size (struct hstate*) ;
 scalar_t__ huge_pmd_unshare (struct mm_struct*,unsigned long*,int *) ;
 int huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int huge_ptep_get (int *) ;
 int huge_ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int pte_mkhuge (int ) ;
 int pte_modify (int ,int ) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hugetlb_change_protection(struct vm_area_struct *vma,
  unsigned long address, unsigned long end, pgprot_t newprot)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long start = address;
 pte_t *ptep;
 pte_t pte;
 struct hstate *h = hstate_vma(vma);

 BUG_ON(address >= end);
 flush_cache_range(vma, address, end);

 spin_lock(&vma->vm_file->f_mapping->i_mmap_lock);
 spin_lock(&mm->page_table_lock);
 for (; address < end; address += huge_page_size(h)) {
  ptep = huge_pte_offset(mm, address);
  if (!ptep)
   continue;
  if (huge_pmd_unshare(mm, &address, ptep))
   continue;
  if (!huge_pte_none(huge_ptep_get(ptep))) {
   pte = huge_ptep_get_and_clear(mm, address, ptep);
   pte = pte_mkhuge(pte_modify(pte, newprot));
   set_huge_pte_at(mm, address, ptep, pte);
  }
 }
 spin_unlock(&mm->page_table_lock);






 flush_tlb_range(vma, start, end);
 spin_unlock(&vma->vm_file->f_mapping->i_mmap_lock);
}
