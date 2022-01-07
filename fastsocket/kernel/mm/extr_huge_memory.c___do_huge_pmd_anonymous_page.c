
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; int nr_ptes; } ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int HPAGE_PMD_NR ;
 int PageCompound (struct page*) ;
 int VM_BUG_ON (int) ;
 int VM_FAULT_OOM ;
 int __SetPageUptodate (struct page*) ;
 int add_mm_counter (struct mm_struct*,int ,int ) ;
 int anon_rss ;
 int clear_huge_page (struct page*,unsigned long,int ) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_uncharge_page (struct page*) ;
 int mk_pmd (struct page*,int ) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkhuge (int ) ;
 int pmd_none (int ) ;
 int prepare_pmd_huge_pte (int ,struct mm_struct*) ;
 int pte_alloc_one (struct mm_struct*,unsigned long) ;
 int pte_free (struct mm_struct*,int ) ;
 int put_page (struct page*) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __do_huge_pmd_anonymous_page(struct mm_struct *mm,
     struct vm_area_struct *vma,
     unsigned long haddr, pmd_t *pmd,
     struct page *page)
{
 int ret = 0;
 pgtable_t pgtable;

 VM_BUG_ON(!PageCompound(page));
 pgtable = pte_alloc_one(mm, haddr);
 if (unlikely(!pgtable)) {
  mem_cgroup_uncharge_page(page);
  put_page(page);
  return VM_FAULT_OOM;
 }

 clear_huge_page(page, haddr, HPAGE_PMD_NR);
 __SetPageUptodate(page);

 spin_lock(&mm->page_table_lock);
 if (unlikely(!pmd_none(*pmd))) {
  spin_unlock(&mm->page_table_lock);
  mem_cgroup_uncharge_page(page);
  put_page(page);
  pte_free(mm, pgtable);
 } else {
  pmd_t entry;
  entry = mk_pmd(page, vma->vm_page_prot);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  entry = pmd_mkhuge(entry);






  page_add_new_anon_rmap(page, vma, haddr);
  set_pmd_at(mm, haddr, pmd, entry);
  prepare_pmd_huge_pte(pgtable, mm);
  add_mm_counter(mm, anon_rss, HPAGE_PMD_NR);
  mm->nr_ptes++;
  spin_unlock(&mm->page_table_lock);
 }

 return ret;
}
