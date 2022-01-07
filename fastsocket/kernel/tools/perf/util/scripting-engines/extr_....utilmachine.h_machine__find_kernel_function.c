
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct machine {int dummy; } ;


 int MAP__FUNCTION ;
 struct symbol* machine__find_kernel_symbol (struct machine*,int ,int ,struct map**,int ) ;

__attribute__((used)) static inline
struct symbol *machine__find_kernel_function(struct machine *machine, u64 addr,
          struct map **mapp,
          symbol_filter_t filter)
{
 return machine__find_kernel_symbol(machine, MAP__FUNCTION, addr,
        mapp, filter);
}
