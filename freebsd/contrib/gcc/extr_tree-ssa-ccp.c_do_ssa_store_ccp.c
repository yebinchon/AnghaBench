
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_ssa_ccp (int) ;
 scalar_t__ flag_tree_store_ccp ;

__attribute__((used)) static unsigned int
do_ssa_store_ccp (void)
{

  execute_ssa_ccp (flag_tree_store_ccp != 0);
  return 0;
}
