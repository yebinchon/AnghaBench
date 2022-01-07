
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct compact_control {int order; int sync; int contended; int migratepages; int freepages; struct zone* zone; int migratetype; int nr_migratepages; int nr_freepages; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int VM_BUG_ON (int) ;
 int allocflags_to_migratetype (int ) ;
 unsigned long compact_zone (struct zone*,struct compact_control*) ;
 int list_empty (int *) ;

unsigned long compact_zone_order(struct zone *zone,
     int order, gfp_t gfp_mask,
     bool sync, bool *contended)
{
 unsigned long ret;
 struct compact_control cc = {
  .nr_freepages = 0,
  .nr_migratepages = 0,
  .order = order,
  .migratetype = allocflags_to_migratetype(gfp_mask),
  .zone = zone,
  .sync = sync,
 };
 INIT_LIST_HEAD(&cc.freepages);
 INIT_LIST_HEAD(&cc.migratepages);

 ret = compact_zone(zone, &cc);

 VM_BUG_ON(!list_empty(&cc.freepages));
 VM_BUG_ON(!list_empty(&cc.migratepages));

 *contended = cc.contended;
 return ret;
}
