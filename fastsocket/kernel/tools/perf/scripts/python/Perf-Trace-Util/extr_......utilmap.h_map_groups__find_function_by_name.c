
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map_groups {int dummy; } ;
struct map {int dummy; } ;


 int MAP__FUNCTION ;
 struct symbol* map_groups__find_symbol_by_name (struct map_groups*,int ,char const*,struct map**,int ) ;

__attribute__((used)) static inline
struct symbol *map_groups__find_function_by_name(struct map_groups *mg,
       const char *name, struct map **mapp,
       symbol_filter_t filter)
{
 return map_groups__find_symbol_by_name(mg, MAP__FUNCTION, name, mapp, filter);
}
