
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_copy_prop (int) ;
 scalar_t__ flag_tree_store_copy_prop ;

__attribute__((used)) static unsigned int
store_copy_prop (void)
{

  execute_copy_prop (flag_tree_store_copy_prop != 0);
  return 0;
}
