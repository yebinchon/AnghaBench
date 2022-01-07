
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eh_region {scalar_t__ tree_label; int label; } ;
typedef int rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int last_region_number; int region_array; } ;


 int DECL_RTL_IF_SET (scalar_t__) ;
 struct eh_region* VEC_index (int ,int ,int) ;
 TYPE_2__* cfun ;
 int eh_region ;
 int get_insns () ;
 int remove_unreachable_regions (int ) ;

void
convert_from_eh_region_ranges (void)
{
  rtx insns = get_insns ();
  int i, n = cfun->eh->last_region_number;





  for (i = 1; i <= n; ++i)
    {
      struct eh_region *region;

      region = VEC_index (eh_region, cfun->eh->region_array, i);
      if (region && region->tree_label)
 region->label = DECL_RTL_IF_SET (region->tree_label);
    }

  remove_unreachable_regions (insns);
}
