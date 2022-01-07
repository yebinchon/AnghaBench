
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_ops; int anon_vma; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int fault; } ;


 int BUG_ON (unsigned int) ;
 int EFAULT ;
 struct page* ERR_PTR (int ) ;
 unsigned int FOLL_DUMP ;
 unsigned int FOLL_GET ;
 unsigned int FOLL_MIGRATION ;
 unsigned int FOLL_SPLIT ;
 unsigned int FOLL_TOUCH ;
 unsigned int FOLL_WRITE ;
 int IS_ERR (struct page*) ;
 int PageDirty (struct page*) ;
 int VM_HUGETLB ;
 struct page* follow_huge_addr (struct mm_struct*,unsigned long,unsigned int) ;
 struct page* follow_huge_pmd (struct mm_struct*,unsigned long,int *,unsigned int) ;
 struct page* follow_huge_pud (struct mm_struct*,unsigned long,int *,unsigned int) ;
 struct page* follow_trans_huge_pmd (struct mm_struct*,unsigned long,int *,unsigned int) ;
 int get_page_foll (struct page*) ;
 int is_migration_entry (int ) ;
 int is_zero_pfn (int ) ;
 scalar_t__ likely (int) ;
 int mark_page_accessed (struct page*) ;
 int migration_entry_wait (struct mm_struct*,int *,unsigned long) ;
 int pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_bad (int ) ;
 scalar_t__ pmd_huge (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int pte_dirty (int ) ;
 scalar_t__ pte_file (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 struct page* pte_page (int ) ;
 int pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_write (int ) ;
 int pud_bad (int ) ;
 scalar_t__ pud_huge (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int split_huge_page_pmd (struct mm_struct*,int *) ;
 scalar_t__ unlikely (int) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;
 int wait_split_huge_page (int ,int *) ;

struct page *follow_page(struct vm_area_struct *vma, unsigned long address,
   unsigned int flags)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep, pte;
 spinlock_t *ptl;
 struct page *page;
 struct mm_struct *mm = vma->vm_mm;

 page = follow_huge_addr(mm, address, flags & FOLL_WRITE);
 if (!IS_ERR(page)) {
  BUG_ON(flags & FOLL_GET);
  goto out;
 }

 page = ((void*)0);
 pgd = pgd_offset(mm, address);
 if (pgd_none(*pgd) || unlikely(pgd_bad(*pgd)))
  goto no_page_table;

 pud = pud_offset(pgd, address);
 if (pud_none(*pud))
  goto no_page_table;
 if (pud_huge(*pud)) {
  BUG_ON(flags & FOLL_GET);
  page = follow_huge_pud(mm, address, pud, flags & FOLL_WRITE);
  goto out;
 }
 if (unlikely(pud_bad(*pud)))
  goto no_page_table;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd))
  goto no_page_table;
 if (pmd_huge(*pmd) && vma->vm_flags & VM_HUGETLB) {
  BUG_ON(flags & FOLL_GET);
  page = follow_huge_pmd(mm, address, pmd, flags & FOLL_WRITE);
  goto out;
 }
 if (pmd_trans_huge(*pmd)) {
  if (flags & FOLL_SPLIT) {
   split_huge_page_pmd(mm, pmd);
   goto split_fallthrough;
  }
  spin_lock(&mm->page_table_lock);
  if (likely(pmd_trans_huge(*pmd))) {
   if (unlikely(pmd_trans_splitting(*pmd))) {
    spin_unlock(&mm->page_table_lock);
    wait_split_huge_page(vma->anon_vma, pmd);
   } else {
    page = follow_trans_huge_pmd(mm, address,
            pmd, flags);
    spin_unlock(&mm->page_table_lock);
    goto out;
   }
  } else
   spin_unlock(&mm->page_table_lock);

 }
split_fallthrough:
 if (unlikely(pmd_bad(*pmd)))
  goto no_page_table;

 ptep = pte_offset_map_lock(mm, pmd, address, &ptl);

 pte = *ptep;
 if (!pte_present(pte)) {
  swp_entry_t entry;





  if (likely(!(flags & FOLL_MIGRATION)))
   goto no_page;
  if (pte_none(pte) || pte_file(pte))
   goto no_page;
  entry = pte_to_swp_entry(pte);
  if (!is_migration_entry(entry))
   goto no_page;
  pte_unmap_unlock(ptep, ptl);
  migration_entry_wait(mm, pmd, address);
  goto split_fallthrough;
 }
 if ((flags & FOLL_WRITE) && !pte_write(pte))
  goto unlock;

 page = vm_normal_page(vma, address, pte);
 if (unlikely(!page)) {
  if ((flags & FOLL_DUMP) ||
      !is_zero_pfn(pte_pfn(pte)))
   goto bad_page;
  page = pte_page(pte);
 }

 if (flags & FOLL_GET)
  get_page_foll(page);
 if (flags & FOLL_TOUCH) {
  if ((flags & FOLL_WRITE) &&
      !pte_dirty(pte) && !PageDirty(page))
   set_page_dirty(page);





  mark_page_accessed(page);
 }
unlock:
 pte_unmap_unlock(ptep, ptl);
out:
 return page;

bad_page:
 pte_unmap_unlock(ptep, ptl);
 return ERR_PTR(-EFAULT);

no_page:
 pte_unmap_unlock(ptep, ptl);
 if (!pte_none(pte))
  return page;

no_page_table:
 if ((flags & FOLL_DUMP) &&
     (!vma->vm_ops || !vma->vm_ops->fault))
  return ERR_PTR(-EFAULT);
 return page;
}
