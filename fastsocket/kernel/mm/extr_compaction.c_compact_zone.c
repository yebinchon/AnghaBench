
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; unsigned long compact_cached_migrate_pfn; unsigned long compact_cached_free_pfn; } ;
struct compact_control {unsigned long migrate_pfn; unsigned long free_pfn; scalar_t__ sync; unsigned long nr_migratepages; scalar_t__ nr_freepages; int freepages; int migratepages; scalar_t__ contended; int order; } ;


 int COMPACTBLOCKS ;
 int COMPACTPAGEFAILED ;
 int COMPACTPAGES ;



 int MIGRATE_ASYNC ;
 scalar_t__ MIGRATE_SYNC ;
 int MIGRATE_SYNC_LIGHT ;
 int VM_BUG_ON (int) ;
 int __reset_isolation_suitable (struct zone*) ;
 int compact_finished (struct zone*,struct compact_control*) ;
 int compaction_alloc ;
 scalar_t__ compaction_restarting (struct zone*,int ) ;
 int compaction_suitable (struct zone*,int ) ;
 int count_vm_event (int ) ;
 int count_vm_events (int ,unsigned long) ;
 int current_is_kswapd () ;
 int isolate_migratepages (struct zone*,struct compact_control*) ;
 int list_empty (int *) ;
 int migrate_pages (int *,int ,unsigned long,int,int ) ;
 int migrate_prep_local () ;
 int pageblock_nr_pages ;
 int putback_lru_pages (int *) ;
 scalar_t__ release_freepages (int *) ;
 int update_nr_listpages (struct compact_control*) ;

__attribute__((used)) static int compact_zone(struct zone *zone, struct compact_control *cc)
{
 int ret;
 unsigned long start_pfn = zone->zone_start_pfn;
 unsigned long end_pfn = zone->zone_start_pfn + zone->spanned_pages;

 ret = compaction_suitable(zone, cc->order);
 switch (ret) {
 case 129:
 case 128:

  return ret;
 case 130:

  ;
 }
 if ((compaction_restarting(zone, cc->order)) && !current_is_kswapd())
  __reset_isolation_suitable(zone);






 cc->migrate_pfn = zone->compact_cached_migrate_pfn;
 cc->free_pfn = zone->compact_cached_free_pfn;
 if (cc->free_pfn < start_pfn || cc->free_pfn > end_pfn) {
  cc->free_pfn = end_pfn & ~(pageblock_nr_pages-1);
  zone->compact_cached_free_pfn = cc->free_pfn;
 }
 if (cc->migrate_pfn < start_pfn || cc->migrate_pfn > end_pfn) {
  cc->migrate_pfn = start_pfn;
  zone->compact_cached_migrate_pfn = cc->migrate_pfn;
 }

 migrate_prep_local();

 while ((ret = compact_finished(zone, cc)) == 130) {
  unsigned long nr_migrate, nr_remaining;

  if (!isolate_migratepages(zone, cc)) {
   if (cc->contended && cc->sync != MIGRATE_SYNC) {
    putback_lru_pages(&cc->migratepages);
    cc->nr_migratepages = 0;
    ret = 129;
    break;
   }
   continue;
  }

  nr_migrate = cc->nr_migratepages;
  migrate_pages(&cc->migratepages, compaction_alloc,
    (unsigned long)cc, 0,
    cc->sync ? MIGRATE_SYNC_LIGHT : MIGRATE_ASYNC);
  update_nr_listpages(cc);
  nr_remaining = cc->nr_migratepages;

  count_vm_event(COMPACTBLOCKS);
  count_vm_events(COMPACTPAGES, nr_migrate - nr_remaining);
  if (nr_remaining)
   count_vm_events(COMPACTPAGEFAILED, nr_remaining);


  if (!list_empty(&cc->migratepages)) {
   putback_lru_pages(&cc->migratepages);
   cc->nr_migratepages = 0;
  }

 }


 cc->nr_freepages -= release_freepages(&cc->freepages);
 VM_BUG_ON(cc->nr_freepages != 0);

 return ret;
}
