
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int dummy; } ;
struct compact_control {int order; int sync; int migratepages; int freepages; struct zone* zone; int nr_migratepages; int nr_freepages; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_NR_ZONES ;
 TYPE_1__* NODE_DATA (int) ;
 int VM_BUG_ON (int) ;
 int __reset_isolation_suitable (struct zone*) ;
 int compact_zone (struct zone*,struct compact_control*) ;
 int list_empty (int *) ;
 int lru_add_drain_all () ;
 int node_online (int) ;
 int nr_node_ids ;
 int populated_zone (struct zone*) ;

__attribute__((used)) static int compact_node(int nid)
{
 int zoneid;
 pg_data_t *pgdat;
 struct zone *zone;

 if (nid < 0 || nid >= nr_node_ids || !node_online(nid))
  return -EINVAL;
 pgdat = NODE_DATA(nid);


 lru_add_drain_all();

 for (zoneid = 0; zoneid < MAX_NR_ZONES; zoneid++) {
  struct compact_control cc = {
   .nr_freepages = 0,
   .nr_migratepages = 0,
   .order = -1,
   .sync = 1,
  };

  zone = &pgdat->node_zones[zoneid];
  if (!populated_zone(zone))
   continue;

  cc.zone = zone;
  INIT_LIST_HEAD(&cc.freepages);
  INIT_LIST_HEAD(&cc.migratepages);

  __reset_isolation_suitable(zone);
  compact_zone(zone, &cc);

  VM_BUG_ON(!list_empty(&cc.freepages));
  VM_BUG_ON(!list_empty(&cc.migratepages));
 }

 return 0;
}
