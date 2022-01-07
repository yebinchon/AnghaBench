
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_binding_level ;
 int global_scope_p (int ) ;

int
global_bindings_p (void)
{
  return global_scope_p (current_binding_level);
}
