
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct TYPE_2__ {int node_id; } ;


 unsigned int SHOW_MEM_FILTER_NODES ;
 int cpuset_current_mems_allowed ;
 int get_mems_allowed () ;
 int node_isset (int ,int ) ;
 int put_mems_allowed () ;

__attribute__((used)) static bool skip_free_areas_zone(unsigned int flags, const struct zone *zone)
{
 bool ret = 0;

 if (!(flags & SHOW_MEM_FILTER_NODES))
  goto out;

 get_mems_allowed();
 ret = !node_isset(zone->zone_pgdat->node_id,
    cpuset_current_mems_allowed);
 put_mems_allowed();
out:
 return ret;
}
