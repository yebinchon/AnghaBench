
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int * symbols; int * symbol_names; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int dso__set_sorted_by_name (struct dso*,int) ;
 void symbols__sort_by_name (int *,int *) ;

void dso__sort_by_name(struct dso *dso, enum map_type type)
{
 dso__set_sorted_by_name(dso, type);
 return symbols__sort_by_name(&dso->symbol_names[type],
         &dso->symbols[type]);
}
