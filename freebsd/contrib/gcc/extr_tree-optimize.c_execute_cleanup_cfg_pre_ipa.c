
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_tree_cfg () ;

__attribute__((used)) static unsigned int
execute_cleanup_cfg_pre_ipa (void)
{
  cleanup_tree_cfg ();
  return 0;
}
