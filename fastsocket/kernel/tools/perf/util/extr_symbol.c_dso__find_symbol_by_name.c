
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dso {int * symbol_names; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct symbol* symbols__find_by_name (int *,char const*) ;

struct symbol *dso__find_symbol_by_name(struct dso *dso, enum map_type type,
     const char *name)
{
 return symbols__find_by_name(&dso->symbol_names[type], name);
}
