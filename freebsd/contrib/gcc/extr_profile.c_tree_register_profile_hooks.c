
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int ) ;
 int ir_type () ;
 int * profile_hooks ;
 int tree_profile_hooks ;

void
tree_register_profile_hooks (void)
{
  gcc_assert (ir_type ());
  profile_hooks = &tree_profile_hooks;
}
