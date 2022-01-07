
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {int dummy; } ;
struct per_cpu_pages {scalar_t__ count; scalar_t__ high; scalar_t__ batch; int * lists; } ;
struct page {int lru; int * mapping; } ;
struct TYPE_2__ {struct per_cpu_pages pcp; } ;


 int MIGRATE_ISOLATE ;
 int MIGRATE_MOVABLE ;
 int MIGRATE_PCPTYPES ;
 int PAGE_SIZE ;
 int PGFREE ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHighMem (struct page*) ;
 int __TestClearPageMlocked (struct page*) ;
 int __count_vm_event (int ) ;
 int arch_free_page (struct page*,int ) ;
 int debug_check_no_locks_freed (int ,int ) ;
 int debug_check_no_obj_freed (int ,int ) ;
 int free_one_page (struct zone*,struct page*,int ,int) ;
 int free_page_mlock (struct page*) ;
 scalar_t__ free_pages_check (struct page*) ;
 int free_pcppages_bulk (struct zone*,scalar_t__,struct per_cpu_pages*) ;
 int get_cpu () ;
 int get_pageblock_migratetype (struct page*) ;
 int kernel_map_pages (struct page*,int,int ) ;
 int kmemcheck_free_shadow (struct page*,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int page_address (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int put_cpu () ;
 int set_page_private (struct page*,int) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* zone_pcp (struct zone*,int ) ;

__attribute__((used)) static void free_hot_cold_page(struct page *page, int cold)
{
 struct zone *zone = page_zone(page);
 struct per_cpu_pages *pcp;
 unsigned long flags;
 int migratetype;
 int wasMlocked = __TestClearPageMlocked(page);

 kmemcheck_free_shadow(page, 0);

 if (PageAnon(page))
  page->mapping = ((void*)0);
 if (free_pages_check(page))
  return;

 if (!PageHighMem(page)) {
  debug_check_no_locks_freed(page_address(page), PAGE_SIZE);
  debug_check_no_obj_freed(page_address(page), PAGE_SIZE);
 }
 arch_free_page(page, 0);
 kernel_map_pages(page, 1, 0);

 pcp = &zone_pcp(zone, get_cpu())->pcp;
 migratetype = get_pageblock_migratetype(page);
 set_page_private(page, migratetype);
 local_irq_save(flags);
 if (unlikely(wasMlocked))
  free_page_mlock(page);
 __count_vm_event(PGFREE);
 if (migratetype >= MIGRATE_PCPTYPES) {
  if (unlikely(migratetype == MIGRATE_ISOLATE)) {
   free_one_page(zone, page, 0, migratetype);
   goto out;
  }
  migratetype = MIGRATE_MOVABLE;
 }

 if (cold)
  list_add_tail(&page->lru, &pcp->lists[migratetype]);
 else
  list_add(&page->lru, &pcp->lists[migratetype]);
 pcp->count++;
 if (pcp->count >= pcp->high) {
  free_pcppages_bulk(zone, pcp->batch, pcp);
  pcp->count -= pcp->batch;
 }

out:
 local_irq_restore(flags);
 put_cpu();
}
