
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int * machine; int * removed_maps; int * maps; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAP__NR_TYPES ;
 int RB_ROOT ;

void map_groups__init(struct map_groups *mg)
{
 int i;
 for (i = 0; i < MAP__NR_TYPES; ++i) {
  mg->maps[i] = RB_ROOT;
  INIT_LIST_HEAD(&mg->removed_maps[i]);
 }
 mg->machine = ((void*)0);
}
