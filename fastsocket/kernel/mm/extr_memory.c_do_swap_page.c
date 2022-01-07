
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int DELAYACCT_PF_SWAPIN ;
 unsigned int FAULT_FLAG_WRITE ;
 int GFP_HIGHUSER_MOVABLE ;
 int GFP_KERNEL ;
 int PGMAJFAULT ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageMlocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int PageUptodate (struct page*) ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 int VM_LOCKED ;
 int anon_rss ;
 int count_vm_event (int ) ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 int delayacct_clear_flag (int ) ;
 int delayacct_set_flag (int ) ;
 int do_page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int do_wp_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,int *,int ) ;
 int flush_icache_page (struct vm_area_struct*,struct page*) ;
 int grab_swap_token (struct mm_struct*) ;
 int inc_mm_counter (struct mm_struct*,int ) ;
 scalar_t__ is_hwpoison_entry (TYPE_1__) ;
 scalar_t__ is_migration_entry (TYPE_1__) ;
 struct page* ksm_might_need_to_copy (struct page*,struct vm_area_struct*,unsigned long) ;
 scalar_t__ likely (int ) ;
 int lock_page_or_retry (struct page*,struct mm_struct*,unsigned int) ;
 struct page* lookup_swap_cache (TYPE_1__) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge_swapin (struct mem_cgroup*) ;
 int mem_cgroup_commit_charge_swapin (struct page*,struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_try_charge_swapin (struct mm_struct*,struct page*,int ,struct mem_cgroup**) ;
 int migration_entry_wait (struct mm_struct*,int *,unsigned long) ;
 int mk_pte (struct page*,int ) ;
 int non_swap_entry (TYPE_1__) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int print_bad_pte (struct vm_area_struct*,unsigned long,int ,int *) ;
 int pte_mkdirty (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_same (int ,int ) ;
 TYPE_1__ pte_to_swp_entry (int ) ;
 int pte_unmap_same (struct mm_struct*,int *,int *,int ) ;
 int pte_unmap_unlock (int *,int *) ;
 scalar_t__ reuse_swap_page (struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int swap_free (TYPE_1__) ;
 int swap_usage ;
 struct page* swapin_readahead (TYPE_1__,int ,struct vm_area_struct*,unsigned long) ;
 int trace_mm_anon_pgin (struct mm_struct*,unsigned long) ;
 int try_to_free_swap (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ vm_swap_full () ;

__attribute__((used)) static int do_swap_page(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long address, pte_t *page_table, pmd_t *pmd,
  unsigned int flags, pte_t orig_pte)
{
 spinlock_t *ptl;
 struct page *page = ((void*)0), *swapcache = ((void*)0);
 swp_entry_t entry;
 pte_t pte;
 int locked;
 struct mem_cgroup *ptr = ((void*)0);
 int exclusive = 0;
 int ret = 0;

 if (!pte_unmap_same(mm, pmd, page_table, orig_pte))
  goto out;

 entry = pte_to_swp_entry(orig_pte);
 if (unlikely(non_swap_entry(entry))) {
  if (is_migration_entry(entry)) {
   migration_entry_wait(mm, pmd, address);
  } else if (is_hwpoison_entry(entry)) {
   ret = VM_FAULT_HWPOISON;
  } else {
   print_bad_pte(vma, address, orig_pte, ((void*)0));
   ret = VM_FAULT_SIGBUS;
  }
  goto out;
 }
 delayacct_set_flag(DELAYACCT_PF_SWAPIN);
 page = lookup_swap_cache(entry);
 if (!page) {
  grab_swap_token(mm);
  page = swapin_readahead(entry,
     GFP_HIGHUSER_MOVABLE, vma, address);
  if (!page) {




   page_table = pte_offset_map_lock(mm, pmd, address, &ptl);
   if (likely(pte_same(*page_table, orig_pte)))
    ret = VM_FAULT_OOM;
   delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
   goto unlock;
  }


  ret = VM_FAULT_MAJOR;
  count_vm_event(PGMAJFAULT);
 } else if (PageHWPoison(page)) {




  ret = VM_FAULT_HWPOISON;
  delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
  goto out_release;
 }

 locked = lock_page_or_retry(page, mm, flags);
 delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
 if (!locked) {
  ret |= VM_FAULT_RETRY;
  goto out_release;
 }







 if (unlikely(!PageSwapCache(page) || page_private(page) != entry.val))
  goto out_page;

 swapcache = page;
 page = ksm_might_need_to_copy(page, vma, address);
 if (unlikely(!page)) {
  ret = VM_FAULT_OOM;
  page = swapcache;
  swapcache = ((void*)0);
  goto out_page;
 }
 if (page == swapcache)
  swapcache = ((void*)0);

 if (mem_cgroup_try_charge_swapin(mm, page, GFP_KERNEL, &ptr)) {
  ret = VM_FAULT_OOM;
  goto out_page;
 }




 page_table = pte_offset_map_lock(mm, pmd, address, &ptl);
 if (unlikely(!pte_same(*page_table, orig_pte)))
  goto out_nomap;

 if (unlikely(!PageUptodate(page))) {
  ret = VM_FAULT_SIGBUS;
  goto out_nomap;
 }
 inc_mm_counter(mm, anon_rss);
 dec_mm_counter(mm, swap_usage);
 pte = mk_pte(page, vma->vm_page_prot);
 if ((flags & FAULT_FLAG_WRITE) && reuse_swap_page(page)) {
  pte = maybe_mkwrite(pte_mkdirty(pte), vma);
  flags &= ~FAULT_FLAG_WRITE;
  exclusive = 1;
 }
 flush_icache_page(vma, page);
 set_pte_at(mm, address, page_table, pte);
 do_page_add_anon_rmap(page, vma, address, exclusive);

 mem_cgroup_commit_charge_swapin(page, ptr);

 swap_free(entry);
 if (vm_swap_full() || (vma->vm_flags & VM_LOCKED) || PageMlocked(page))
  try_to_free_swap(page);
 unlock_page(page);
 if (swapcache) {
  unlock_page(swapcache);
  page_cache_release(swapcache);
 }

 if (flags & FAULT_FLAG_WRITE) {
  ret |= do_wp_page(mm, vma, address, page_table, pmd, ptl, pte);
  if (ret & VM_FAULT_ERROR)
   ret &= VM_FAULT_ERROR;
  goto out;
 }


 update_mmu_cache(vma, address, pte);
unlock:
 pte_unmap_unlock(page_table, ptl);
out:
 trace_mm_anon_pgin(mm, address);
 return ret;
out_nomap:
 mem_cgroup_cancel_charge_swapin(ptr);
 pte_unmap_unlock(page_table, ptl);
out_page:
 unlock_page(page);
out_release:
 page_cache_release(page);
 if (swapcache) {
  unlock_page(swapcache);
  page_cache_release(swapcache);
 }
 return ret;
}
