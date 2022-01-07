
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int dec_mm_counter (struct mm_struct*,int ) ;
 int file_rss ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int free_swap_and_cache (int ) ;
 int page_cache_release (struct page*) ;
 int page_remove_rmap (struct page*) ;
 int pte_clear_not_present_full (struct mm_struct*,unsigned long,int *,int ) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_file (int ) ;
 int pte_pfn (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 int set_page_dirty (struct page*) ;
 int update_hiwater_rss (struct mm_struct*) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static void zap_pte(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long addr, pte_t *ptep)
{
 pte_t pte = *ptep;

 if (pte_present(pte)) {
  struct page *page;

  flush_cache_page(vma, addr, pte_pfn(pte));
  pte = ptep_clear_flush(vma, addr, ptep);
  page = vm_normal_page(vma, addr, pte);
  if (page) {
   if (pte_dirty(pte))
    set_page_dirty(page);
   page_remove_rmap(page);
   page_cache_release(page);
   update_hiwater_rss(mm);
   dec_mm_counter(mm, file_rss);
  }
 } else {
  if (!pte_file(pte))
   free_swap_and_cache(pte_to_swp_entry(pte));
  pte_clear_not_present_full(mm, addr, ptep, 0);
 }
}
