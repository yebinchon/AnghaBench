
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_early_inlining ;
 scalar_t__ flag_inline_trees ;

__attribute__((used)) static bool
cgraph_gate_early_inlining (void)
{
  return flag_inline_trees && flag_early_inlining;
}
