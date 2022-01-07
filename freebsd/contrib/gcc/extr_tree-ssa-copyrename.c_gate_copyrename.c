
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_tree_copyrename ;

__attribute__((used)) static bool
gate_copyrename (void)
{
  return flag_tree_copyrename != 0;
}
