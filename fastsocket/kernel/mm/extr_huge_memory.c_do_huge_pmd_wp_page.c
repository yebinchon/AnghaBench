
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; int anon_vma; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;


 int GFP_KERNEL ;
 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 int PageCompound (struct page*) ;
 int PageHead (struct page*) ;
 int THP_FAULT_ALLOC ;
 int THP_FAULT_FALLBACK ;
 int VM_BUG_ON (int) ;
 int VM_FAULT_OOM ;
 int VM_FAULT_WRITE ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_hugepage_vma (int ,struct vm_area_struct*,unsigned long,int ,int ) ;
 int copy_user_huge_page (struct page*,struct page*,unsigned long,struct vm_area_struct*,int ) ;
 int count_vm_event (int ) ;
 int do_huge_pmd_wp_page_fallback (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int ,struct page*,unsigned long) ;
 int get_page (struct page*) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_newpage_charge (struct page*,struct mm_struct*,int ) ;
 int mem_cgroup_uncharge_page (struct page*) ;
 int mk_pmd (struct page*,int ) ;
 int numa_node_id () ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int page_mapcount (struct page*) ;
 int page_remove_rmap (struct page*) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkhuge (int ) ;
 int pmd_mkyoung (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_same (int ,int ) ;
 int pmdp_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 scalar_t__ pmdp_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int put_page (struct page*) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int split_huge_page (struct page*) ;
 int transparent_hugepage_debug_cow () ;
 int transparent_hugepage_defrag (struct vm_area_struct*) ;
 scalar_t__ transparent_hugepage_enabled (struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

int do_huge_pmd_wp_page(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long address, pmd_t *pmd, pmd_t orig_pmd)
{
 int ret = 0;
 struct page *page, *new_page;
 unsigned long haddr;

 VM_BUG_ON(!vma->anon_vma);
 spin_lock(&mm->page_table_lock);
 if (unlikely(!pmd_same(*pmd, orig_pmd)))
  goto out_unlock;

 page = pmd_page(orig_pmd);
 VM_BUG_ON(!PageCompound(page) || !PageHead(page));
 haddr = address & HPAGE_PMD_MASK;
 if (page_mapcount(page) == 1) {
  pmd_t entry;
  entry = pmd_mkyoung(orig_pmd);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  if (pmdp_set_access_flags(vma, haddr, pmd, entry, 1))
   update_mmu_cache(vma, address, entry);
  ret |= VM_FAULT_WRITE;
  goto out_unlock;
 }
 get_page(page);
 spin_unlock(&mm->page_table_lock);

 if (transparent_hugepage_enabled(vma) &&
     !transparent_hugepage_debug_cow())
  new_page = alloc_hugepage_vma(transparent_hugepage_defrag(vma),
           vma, haddr, numa_node_id(), 0);
 else
  new_page = ((void*)0);

 if (unlikely(!new_page)) {
  count_vm_event(THP_FAULT_FALLBACK);
  ret = do_huge_pmd_wp_page_fallback(mm, vma, address,
         pmd, orig_pmd, page, haddr);
  if (ret & VM_FAULT_OOM)
   split_huge_page(page);
  put_page(page);
  goto out;
 }
 count_vm_event(THP_FAULT_ALLOC);

 if (unlikely(mem_cgroup_newpage_charge(new_page, mm, GFP_KERNEL))) {
  put_page(new_page);
  split_huge_page(page);
  put_page(page);
  ret |= VM_FAULT_OOM;
  goto out;
 }

 copy_user_huge_page(new_page, page, haddr, vma, HPAGE_PMD_NR);
 __SetPageUptodate(new_page);

 spin_lock(&mm->page_table_lock);
 put_page(page);
 if (unlikely(!pmd_same(*pmd, orig_pmd))) {
  mem_cgroup_uncharge_page(new_page);
  put_page(new_page);
 } else {
  pmd_t entry;
  VM_BUG_ON(!PageHead(page));
  entry = mk_pmd(new_page, vma->vm_page_prot);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  entry = pmd_mkhuge(entry);
  pmdp_clear_flush_notify(vma, haddr, pmd);
  page_add_new_anon_rmap(new_page, vma, haddr);
  set_pmd_at(mm, haddr, pmd, entry);
  update_mmu_cache(vma, address, entry);
  page_remove_rmap(page);
  put_page(page);
  ret |= VM_FAULT_WRITE;
 }
out_unlock:
 spin_unlock(&mm->page_table_lock);
out:
 return ret;
}
