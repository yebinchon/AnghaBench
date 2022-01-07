
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_tree_ccp ;
 scalar_t__ flag_tree_store_ccp ;

__attribute__((used)) static bool
gate_store_ccp (void)
{



  return flag_tree_store_ccp != 0 || flag_tree_ccp != 0;
}
