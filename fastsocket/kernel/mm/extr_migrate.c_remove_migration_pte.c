
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 int SWAP_AGAIN ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int get_page (struct page*) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int hugepage_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int is_migration_entry (int ) ;
 int is_swap_pte (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 void* migration_entry_to_page (int ) ;
 int mk_pte (struct page*,int ) ;
 int page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int page_add_file_rmap (struct page*) ;
 int page_dup_rmap (struct page*) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 int pte_mkhuge (int ) ;
 int pte_mkold (int ) ;
 int pte_mkwrite (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_pfn (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 scalar_t__ unlikely (scalar_t__) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int remove_migration_pte(struct page *new, struct vm_area_struct *vma,
     unsigned long addr, void *old)
{
 struct mm_struct *mm = vma->vm_mm;
 swp_entry_t entry;
  pgd_t *pgd;
  pud_t *pud;
  pmd_t *pmd;
 pte_t *ptep, pte;
  spinlock_t *ptl;

 if (unlikely(PageHuge(new))) {
  ptep = huge_pte_offset(mm, addr);
  if (!ptep)
   goto out;
  ptl = &mm->page_table_lock;
 } else {
  pgd = pgd_offset(mm, addr);
  if (!pgd_present(*pgd))
   goto out;

  pud = pud_offset(pgd, addr);
  if (!pud_present(*pud))
   goto out;

  pmd = pmd_offset(pud, addr);
  if (pmd_trans_huge(*pmd))
   goto out;
  if (!pmd_present(*pmd))
   goto out;

  ptep = pte_offset_map(pmd, addr);






  ptl = pte_lockptr(mm, pmd);
 }

  spin_lock(ptl);
 pte = *ptep;
 if (!is_swap_pte(pte))
  goto unlock;

 entry = pte_to_swp_entry(pte);

 if (!is_migration_entry(entry) ||
     migration_entry_to_page(entry) != old)
  goto unlock;

 get_page(new);
 pte = pte_mkold(mk_pte(new, vma->vm_page_prot));
 if (is_write_migration_entry(entry))
  pte = pte_mkwrite(pte);




 flush_cache_page(vma, addr, pte_pfn(pte));
 set_pte_at(mm, addr, ptep, pte);

 if (PageHuge(new)) {
  if (PageAnon(new))
   hugepage_add_anon_rmap(new, vma, addr);
  else
   page_dup_rmap(new);
 } else if (PageAnon(new))
  page_add_anon_rmap(new, vma, addr);
 else
  page_add_file_rmap(new);


 update_mmu_cache(vma, addr, pte);
unlock:
 pte_unmap_unlock(ptep, ptl);
out:
 return SWAP_AGAIN;
}
