
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int anon_vma; } ;
struct page {int dummy; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef int pmd_t ;
typedef int pgtable_t ;
struct TYPE_4__ {int page_table_lock; int nr_ptes; } ;


 int HPAGE_PMD_NR ;
 int PageHead (struct page*) ;
 int VM_BUG_ON (int) ;
 int add_mm_counter (TYPE_1__*,int ,int ) ;
 int anon_rss ;
 int get_pmd_huge_pte (TYPE_1__*) ;
 scalar_t__ likely (int ) ;
 scalar_t__ page_mapcount (struct page*) ;
 int page_remove_rmap (struct page*) ;
 int pmd_clear (int *) ;
 struct page* pmd_page (int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int pte_free (TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tlb_remove_page (struct mmu_gather*,struct page*) ;
 scalar_t__ unlikely (int ) ;
 int wait_split_huge_page (int ,int *) ;

int zap_huge_pmd(struct mmu_gather *tlb, struct vm_area_struct *vma,
   pmd_t *pmd)
{
 int ret = 0;

 spin_lock(&tlb->mm->page_table_lock);
 if (likely(pmd_trans_huge(*pmd))) {
  if (unlikely(pmd_trans_splitting(*pmd))) {
   spin_unlock(&tlb->mm->page_table_lock);
   wait_split_huge_page(vma->anon_vma,
          pmd);
  } else {
   struct page *page;
   pgtable_t pgtable;
   pgtable = get_pmd_huge_pte(tlb->mm);
   page = pmd_page(*pmd);
   pmd_clear(pmd);
   page_remove_rmap(page);
   VM_BUG_ON(page_mapcount(page) < 0);
   add_mm_counter(tlb->mm, anon_rss, -HPAGE_PMD_NR);
   VM_BUG_ON(!PageHead(page));
   tlb->mm->nr_ptes--;
   spin_unlock(&tlb->mm->page_table_lock);
   tlb_remove_page(tlb, page);
   pte_free(tlb->mm, pgtable);
   ret = 1;
  }
 } else
  spin_unlock(&tlb->mm->page_table_lock);

 return ret;
}
