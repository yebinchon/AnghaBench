
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cfg_hooks ;
 int tree_cfg_hooks ;

int
ir_type (void)
{
  return cfg_hooks == &tree_cfg_hooks ? 1 : 0;
}
