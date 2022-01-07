
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_virtual_mappings; unsigned int num_virtual_symbols; } ;


 scalar_t__ MIN_VIRTUAL_MAPPINGS ;
 scalar_t__ VIRTUAL_MAPPINGS_TO_SYMS_RATIO ;
 TYPE_1__ update_ssa_stats ;

__attribute__((used)) static bool
switch_virtuals_to_full_rewrite_p (void)
{
  if (update_ssa_stats.num_virtual_mappings < (unsigned) MIN_VIRTUAL_MAPPINGS)
    return 0;

  if (update_ssa_stats.num_virtual_mappings
      > (unsigned) VIRTUAL_MAPPINGS_TO_SYMS_RATIO
        * update_ssa_stats.num_virtual_symbols)
    return 1;

  return 0;
}
