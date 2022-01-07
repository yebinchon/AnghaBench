
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int * removed_maps; int * maps; } ;


 int MAP__NR_TYPES ;
 int maps__delete (int *) ;
 int maps__delete_removed (int *) ;

void map_groups__exit(struct map_groups *mg)
{
 int i;

 for (i = 0; i < MAP__NR_TYPES; ++i) {
  maps__delete(&mg->maps[i]);
  maps__delete_removed(&mg->removed_maps[i]);
 }
}
