
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_tree_loop_linear ;

__attribute__((used)) static bool
gate_tree_linear_transform (void)
{
  return flag_tree_loop_linear != 0;
}
