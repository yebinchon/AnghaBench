
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct eh_region {int tree_label; } ;



void
set_eh_region_tree_label (struct eh_region *region, tree lab)
{
  region->tree_label = lab;
}
