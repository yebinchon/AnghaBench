
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
struct hstate {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 int HPAGE_RESV_OWNER ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageAnon (struct page*) ;
 int VM_FAULT_OOM ;
 int VM_MAYSHARE ;
 int WARN_ON_ONCE (int) ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_huge_page (struct vm_area_struct*,unsigned long,int) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int copy_user_huge_page (struct page*,struct page*,unsigned long,struct vm_area_struct*,int ) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_mask (struct hstate*) ;
 scalar_t__ huge_page_size (struct hstate*) ;
 int huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int huge_ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 int huge_ptep_get (int *) ;
 int hugepage_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 scalar_t__ is_vma_resv_set (struct vm_area_struct*,int ) ;
 scalar_t__ likely (int ) ;
 int make_huge_pte (struct vm_area_struct*,struct page*,int) ;
 int mmu_notifier_invalidate_range_end (struct mm_struct*,unsigned long,scalar_t__) ;
 int mmu_notifier_invalidate_range_start (struct mm_struct*,unsigned long,scalar_t__) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_count (struct page*) ;
 int page_mapcount (struct page*) ;
 int page_move_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int page_remove_rmap (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;
 struct page* pte_page (int ) ;
 int pte_same (int ,int ) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int set_huge_ptep_writable (struct vm_area_struct*,unsigned long,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ unmap_ref_private (struct mm_struct*,struct vm_area_struct*,struct page*,unsigned long) ;

__attribute__((used)) static int hugetlb_cow(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long address, pte_t *ptep, pte_t pte,
   struct page *pagecache_page)
{
 struct hstate *h = hstate_vma(vma);
 struct page *old_page, *new_page;
 int avoidcopy;
 int outside_reserve = 0;

 old_page = pte_page(pte);

retry_avoidcopy:


 avoidcopy = (page_mapcount(old_page) == 1);
 if (avoidcopy) {
  if (PageAnon(old_page))
   page_move_anon_rmap(old_page, vma, address);
  set_huge_ptep_writable(vma, address, ptep);
  return 0;
 }
 if (!(vma->vm_flags & VM_MAYSHARE) &&
   is_vma_resv_set(vma, HPAGE_RESV_OWNER) &&
   old_page != pagecache_page)
  outside_reserve = 1;

 page_cache_get(old_page);


 spin_unlock(&mm->page_table_lock);
 new_page = alloc_huge_page(vma, address, outside_reserve);

 if (IS_ERR(new_page)) {
  page_cache_release(old_page);
  if (outside_reserve) {
   BUG_ON(huge_pte_none(pte));
   if (unmap_ref_private(mm, vma, old_page, address)) {
    BUG_ON(page_count(old_page) != 1);
    BUG_ON(huge_pte_none(pte));
    spin_lock(&mm->page_table_lock);
    goto retry_avoidcopy;
   }
   WARN_ON_ONCE(1);
  }


  spin_lock(&mm->page_table_lock);
  return -PTR_ERR(new_page);
 }





 if (unlikely(anon_vma_prepare(vma))) {

  spin_lock(&mm->page_table_lock);
  return VM_FAULT_OOM;
 }

 copy_user_huge_page(new_page, old_page, address, vma,
       pages_per_huge_page(h));
 __SetPageUptodate(new_page);





 spin_lock(&mm->page_table_lock);
 ptep = huge_pte_offset(mm, address & huge_page_mask(h));
 if (likely(pte_same(huge_ptep_get(ptep), pte))) {

  mmu_notifier_invalidate_range_start(mm,
   address & huge_page_mask(h),
   (address & huge_page_mask(h)) + huge_page_size(h));
  huge_ptep_clear_flush(vma, address, ptep);
  set_huge_pte_at(mm, address, ptep,
    make_huge_pte(vma, new_page, 1));
  page_remove_rmap(old_page);
  hugepage_add_new_anon_rmap(new_page, vma, address);

  new_page = old_page;
  mmu_notifier_invalidate_range_end(mm,
   address & huge_page_mask(h),
   (address & huge_page_mask(h)) + huge_page_size(h));
 }
 page_cache_release(new_page);
 page_cache_release(old_page);
 return 0;
}
