
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int kmaps; } ;


 struct symbol* map_groups__find_function_by_name (int *,char const*,struct map**,int ) ;

__attribute__((used)) static inline
struct symbol *machine__find_kernel_function_by_name(struct machine *machine,
           const char *name,
           struct map **mapp,
           symbol_filter_t filter)
{
 return map_groups__find_function_by_name(&machine->kmaps, name, mapp,
       filter);
}
