
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
struct hstate {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int DEFINE_MUTEX ;


 unsigned int FAULT_FLAG_WRITE ;
 int VM_FAULT_HWPOISON_LARGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SET_HINDEX (struct hstate*) ;
 int VM_MAYSHARE ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 int hstates ;
 int huge_page_size (struct hstate*) ;
 int * huge_pte_alloc (struct mm_struct*,unsigned long,int ,int*) ;
 scalar_t__ huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int huge_ptep_get (int *) ;
 scalar_t__ huge_ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,unsigned int) ;
 int hugetlb_cow (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int ,struct page*) ;
 int hugetlb_no_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,unsigned int) ;
 struct page* hugetlbfs_pagecache_page (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int is_hugetlb_entry_hwpoisoned (int ) ;
 int is_hugetlb_entry_migration (int ) ;
 int lock_page (struct page*) ;
 int migration_entry_wait (struct mm_struct*,int *,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 struct page* pte_page (int ) ;
 int pte_same (int ,int ) ;
 int pte_write (int ) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ vma_needs_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;

int hugetlb_fault(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long address, unsigned int flags)
{
 pte_t *ptep;
 pte_t entry;
 int ret;
 struct page *page = ((void*)0);
 struct page *pagecache_page = ((void*)0);
 static DEFINE_MUTEX(hugetlb_instantiation_mutex);
 struct hstate *h = hstate_vma(vma);
 bool shared = 0;

 ptep = huge_pte_offset(mm, address);
 if (ptep) {
  entry = huge_ptep_get(ptep);
  if (unlikely(is_hugetlb_entry_migration(entry))) {
   migration_entry_wait(mm, (pmd_t *)ptep, address);
   return 0;
  } else if (unlikely(is_hugetlb_entry_hwpoisoned(entry)))
   return VM_FAULT_HWPOISON_LARGE |
          VM_FAULT_SET_HINDEX(h - hstates);
 }

 ptep = huge_pte_alloc(mm, address, huge_page_size(h), &shared);
 if (!ptep)
  return VM_FAULT_OOM;


 if (shared)
  return 0;






 mutex_lock(&hugetlb_instantiation_mutex);
 entry = huge_ptep_get(ptep);
 if (huge_pte_none(entry)) {
  ret = hugetlb_no_page(mm, vma, address, ptep, flags);
  goto out_mutex;
 }

 ret = 0;
 if ((flags & FAULT_FLAG_WRITE) && !pte_write(entry)) {
  if (vma_needs_reservation(h, vma, address) < 0) {
   ret = VM_FAULT_OOM;
   goto out_mutex;
  }

  if (!(vma->vm_flags & VM_MAYSHARE))
   pagecache_page = hugetlbfs_pagecache_page(h,
        vma, address);
 }
 page = pte_page(entry);
 if (page != pagecache_page)
  lock_page(page);

 spin_lock(&mm->page_table_lock);

 if (unlikely(!pte_same(entry, huge_ptep_get(ptep))))
  goto out_page_table_lock;


 if (flags & FAULT_FLAG_WRITE) {
  if (!pte_write(entry)) {
   ret = hugetlb_cow(mm, vma, address, ptep, entry,
       pagecache_page);
   goto out_page_table_lock;
  }
  entry = pte_mkdirty(entry);
 }
 entry = pte_mkyoung(entry);
 if (huge_ptep_set_access_flags(vma, address, ptep, entry,
      flags & FAULT_FLAG_WRITE))
  update_mmu_cache(vma, address, entry);

out_page_table_lock:
 spin_unlock(&mm->page_table_lock);

 if (pagecache_page) {
  unlock_page(pagecache_page);
  put_page(pagecache_page);
 }
 if (page != pagecache_page)
  unlock_page(page);

out_mutex:
 mutex_unlock(&hugetlb_instantiation_mutex);

 return ret;
}
