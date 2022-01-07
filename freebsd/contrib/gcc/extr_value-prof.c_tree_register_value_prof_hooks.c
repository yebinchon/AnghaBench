
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int ) ;
 int ir_type () ;
 int tree_value_prof_hooks ;
 int * value_prof_hooks ;

void
tree_register_value_prof_hooks (void)
{
  value_prof_hooks = &tree_value_prof_hooks;
  gcc_assert (ir_type ());
}
