
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct eh_region {int dummy; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {size_t index; } ;


 scalar_t__ get_eh_region_tree_label (struct eh_region*) ;
 scalar_t__* label_for_bb ;
 TYPE_1__* label_to_block (scalar_t__) ;
 int set_eh_region_tree_label (struct eh_region*,scalar_t__) ;

__attribute__((used)) static void
update_eh_label (struct eh_region *region)
{
  tree old_label = get_eh_region_tree_label (region);
  if (old_label)
    {
      tree new_label;
      basic_block bb = label_to_block (old_label);




      if (! bb)
 return;

      new_label = label_for_bb[bb->index];
      set_eh_region_tree_label (region, new_label);
    }
}
