
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_override_global_bindings_to_false ;
 scalar_t__ current_scope ;
 scalar_t__ file_scope ;

int
global_bindings_p (void)
{
  return current_scope == file_scope && !c_override_global_bindings_to_false;
}
