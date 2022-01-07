
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_tree_cfg (int ,int) ;
 int stderr ;

void
debug_tree_cfg (int flags)
{
  dump_tree_cfg (stderr, flags);
}
