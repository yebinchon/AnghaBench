
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int kmaps; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct symbol* map_groups__find_symbol (int *,int,int ,struct map**,int ) ;

__attribute__((used)) static inline
struct symbol *machine__find_kernel_symbol(struct machine *machine,
        enum map_type type, u64 addr,
        struct map **mapp,
        symbol_filter_t filter)
{
 return map_groups__find_symbol(&machine->kmaps, type, addr,
           mapp, filter);
}
