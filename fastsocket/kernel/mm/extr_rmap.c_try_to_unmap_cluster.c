
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ index; } ;
struct mm_struct {int mmap_sem; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long CLUSTER_MASK ;
 unsigned long CLUSTER_SIZE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageAnon (struct page*) ;
 int SWAP_AGAIN ;
 int SWAP_MLOCK ;
 int VM_LOCKED ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 scalar_t__ down_read_trylock (int *) ;
 int file_rss ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ linear_page_index (struct vm_area_struct*,unsigned long) ;
 int mlock_vma_page (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_remove_rmap (struct page*) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 int pgoff_to_pte (scalar_t__) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pte_dirty (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 scalar_t__ ptep_clear_flush_young_notify (struct vm_area_struct*,unsigned long,int *) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int set_page_dirty (struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int up_read (int *) ;
 int update_hiwater_rss (struct mm_struct*) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int try_to_unmap_cluster(unsigned long cursor, unsigned int *mapcount,
  struct vm_area_struct *vma, struct page *check_page)
{
 struct mm_struct *mm = vma->vm_mm;
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 pte_t pteval;
 spinlock_t *ptl;
 struct page *page;
 unsigned long address;
 unsigned long end;
 int ret = SWAP_AGAIN;
 int locked_vma = 0;

 address = (vma->vm_start + cursor) & CLUSTER_MASK;
 end = address + CLUSTER_SIZE;
 if (address < vma->vm_start)
  address = vma->vm_start;
 if (end > vma->vm_end)
  end = vma->vm_end;

 pgd = pgd_offset(mm, address);
 if (!pgd_present(*pgd))
  return ret;

 pud = pud_offset(pgd, address);
 if (!pud_present(*pud))
  return ret;

 pmd = pmd_offset(pud, address);
 if (!pmd_present(*pmd))
  return ret;





 if (down_read_trylock(&vma->vm_mm->mmap_sem)) {
  locked_vma = (vma->vm_flags & VM_LOCKED);
  if (!locked_vma)
   up_read(&vma->vm_mm->mmap_sem);
 }

 pte = pte_offset_map_lock(mm, pmd, address, &ptl);


 update_hiwater_rss(mm);

 for (; address < end; pte++, address += PAGE_SIZE) {
  if (!pte_present(*pte))
   continue;
  page = vm_normal_page(vma, address, *pte);
  BUG_ON(!page || PageAnon(page));

  if (locked_vma) {
   mlock_vma_page(page);
   if (page == check_page)
    ret = SWAP_MLOCK;
   continue;
  }

  if (ptep_clear_flush_young_notify(vma, address, pte))
   continue;


  flush_cache_page(vma, address, pte_pfn(*pte));
  pteval = ptep_clear_flush_notify(vma, address, pte);


  if (page->index != linear_page_index(vma, address))
   set_pte_at(mm, address, pte, pgoff_to_pte(page->index));


  if (pte_dirty(pteval))
   set_page_dirty(page);

  page_remove_rmap(page);
  page_cache_release(page);
  dec_mm_counter(mm, file_rss);
  (*mapcount)--;
 }
 pte_unmap_unlock(pte - 1, ptl);
 if (locked_vma)
  up_read(&vma->vm_mm->mmap_sem);
 return ret;
}
