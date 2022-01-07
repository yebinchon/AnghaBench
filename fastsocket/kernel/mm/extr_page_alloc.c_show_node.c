
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 scalar_t__ NUMA_BUILD ;
 int printk (char*,int ) ;
 int zone_to_nid (struct zone*) ;

__attribute__((used)) static inline void show_node(struct zone *zone)
{
 if (NUMA_BUILD)
  printk("Node %d ", zone_to_nid(zone));
}
