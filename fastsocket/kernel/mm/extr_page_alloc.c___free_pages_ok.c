
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;


 unsigned int PAGE_SIZE ;
 int PGFREE ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHighMem (struct page*) ;
 int __TestClearPageMlocked (struct page*) ;
 int __count_vm_events (int ,int) ;
 int arch_free_page (struct page*,unsigned int) ;
 int debug_check_no_locks_freed (int ,unsigned int) ;
 int debug_check_no_obj_freed (int ,unsigned int) ;
 int free_one_page (int ,struct page*,unsigned int,int ) ;
 int free_page_mlock (struct page*) ;
 scalar_t__ free_pages_check (struct page*) ;
 int get_pageblock_migratetype (struct page*) ;
 int kernel_map_pages (struct page*,int,int ) ;
 int kmemcheck_free_shadow (struct page*,unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int page_address (struct page*) ;
 int page_zone (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __free_pages_ok(struct page *page, unsigned int order)
{
 unsigned long flags;
 int i;
 int bad = 0;
 int wasMlocked = __TestClearPageMlocked(page);

 kmemcheck_free_shadow(page, order);

 if (PageAnon(page))
  page->mapping = ((void*)0);
 for (i = 0 ; i < (1 << order) ; ++i)
  bad += free_pages_check(page + i);
 if (bad)
  return;

 if (!PageHighMem(page)) {
  debug_check_no_locks_freed(page_address(page),PAGE_SIZE<<order);
  debug_check_no_obj_freed(page_address(page),
        PAGE_SIZE << order);
 }
 arch_free_page(page, order);
 kernel_map_pages(page, 1 << order, 0);

 local_irq_save(flags);
 if (unlikely(wasMlocked))
  free_page_mlock(page);
 __count_vm_events(PGFREE, 1 << order);
 free_one_page(page_zone(page), page, order,
     get_pageblock_migratetype(page));
 local_irq_restore(flags);
}
