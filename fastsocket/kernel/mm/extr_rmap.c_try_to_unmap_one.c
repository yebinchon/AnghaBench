
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; scalar_t__ vm_start; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ index; } ;
struct mm_struct {int mmap_sem; int mmlist; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;
struct TYPE_8__ {int mmlist; } ;


 int BUG_ON (int) ;
 scalar_t__ PAGE_MIGRATION ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int SWAP_AGAIN ;
 int SWAP_FAIL ;
 int SWAP_MLOCK ;
 scalar_t__ TTU_ACTION (int) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_HWPOISON ;
 int TTU_IGNORE_MLOCK ;
 scalar_t__ TTU_MIGRATION ;
 scalar_t__ TTU_MUNLOCK ;
 int VM_LOCKED ;
 int anon_rss ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 scalar_t__ down_read_trylock (int *) ;
 int file_rss ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int inc_mm_counter (struct mm_struct*,int ) ;
 TYPE_6__ init_mm ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 TYPE_1__ make_hwpoison_entry (struct page*) ;
 TYPE_1__ make_migration_entry (struct page*,int ) ;
 int mlock_vma_page (struct page*) ;
 int mmlist_lock ;
 int page_cache_release (struct page*) ;
 int * page_check_address (struct page*,struct mm_struct*,unsigned long,int **,int ) ;
 int page_private (struct page*) ;
 int page_remove_rmap (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_file (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_write (int ) ;
 int ptep_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 scalar_t__ ptep_clear_flush_young_notify (struct vm_area_struct*,unsigned long,int *) ;
 int set_page_dirty (struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ swap_duplicate (TYPE_1__) ;
 int swap_usage ;
 int swp_entry_to_pte (TYPE_1__) ;
 int trace_mm_anon_unmap (struct mm_struct*,scalar_t__) ;
 int up_read (int *) ;
 int update_hiwater_rss (struct mm_struct*) ;

int try_to_unmap_one(struct page *page, struct vm_area_struct *vma,
       unsigned long address, enum ttu_flags flags)
{
 struct mm_struct *mm = vma->vm_mm;
 pte_t *pte;
 pte_t pteval;
 spinlock_t *ptl;
 int ret = SWAP_AGAIN;

 pte = page_check_address(page, mm, address, &ptl, 0);
 if (!pte)
  goto out;






 if (!(flags & TTU_IGNORE_MLOCK)) {
  if (vma->vm_flags & VM_LOCKED) {
   ret = SWAP_MLOCK;
   goto out_unmap;
  }
  if (TTU_ACTION(flags) == TTU_MUNLOCK)
   goto out_unmap;
 }
 if (!(flags & TTU_IGNORE_ACCESS)) {
  if (ptep_clear_flush_young_notify(vma, address, pte)) {
   ret = SWAP_FAIL;
   goto out_unmap;
  }
   }


 flush_cache_page(vma, address, page_to_pfn(page));
 pteval = ptep_clear_flush_notify(vma, address, pte);


 if (pte_dirty(pteval))
  set_page_dirty(page);


 update_hiwater_rss(mm);

 if (PageHWPoison(page) && !(flags & TTU_IGNORE_HWPOISON)) {
  if (PageAnon(page))
   dec_mm_counter(mm, anon_rss);
  else
   dec_mm_counter(mm, file_rss);
  set_pte_at(mm, address, pte,
    swp_entry_to_pte(make_hwpoison_entry(page)));
 } else if (PageAnon(page)) {
  swp_entry_t entry = { .val = page_private(page) };

  if (PageSwapCache(page)) {




   if (swap_duplicate(entry) < 0) {
    set_pte_at(mm, address, pte, pteval);
    ret = SWAP_FAIL;
    goto out_unmap;
   }
   if (list_empty(&mm->mmlist)) {
    spin_lock(&mmlist_lock);
    if (list_empty(&mm->mmlist))
     list_add(&mm->mmlist, &init_mm.mmlist);
    spin_unlock(&mmlist_lock);
   }
   dec_mm_counter(mm, anon_rss);
   inc_mm_counter(mm, swap_usage);
  } else if (PAGE_MIGRATION) {





   BUG_ON(TTU_ACTION(flags) != TTU_MIGRATION);
   entry = make_migration_entry(page, pte_write(pteval));
  }
  set_pte_at(mm, address, pte, swp_entry_to_pte(entry));
  BUG_ON(pte_file(*pte));
 } else if (PAGE_MIGRATION && (TTU_ACTION(flags) == TTU_MIGRATION)) {

  swp_entry_t entry;
  entry = make_migration_entry(page, pte_write(pteval));
  set_pte_at(mm, address, pte, swp_entry_to_pte(entry));
 } else
  dec_mm_counter(mm, file_rss);

 page_remove_rmap(page);
 page_cache_release(page);

out_unmap:
 pte_unmap_unlock(pte, ptl);

 if (ret == SWAP_MLOCK) {
  ret = SWAP_AGAIN;
  if (down_read_trylock(&vma->vm_mm->mmap_sem)) {
   if (vma->vm_flags & VM_LOCKED) {
    mlock_vma_page(page);
    ret = SWAP_MLOCK;
   }
   up_read(&vma->vm_mm->mmap_sem);
  }
  trace_mm_anon_unmap(vma->vm_mm, vma->vm_start+page->index);
 }
out:
 return ret;
}
