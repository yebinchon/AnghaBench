
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int sorted_by_name; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;



void dso__set_sorted_by_name(struct dso *dso, enum map_type type)
{
 dso->sorted_by_name |= (1 << type);
}
