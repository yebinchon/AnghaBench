
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {scalar_t__ kind; } ;


 struct cp_binding_level* innermost_nonclass_level () ;
 scalar_t__ sk_namespace ;
 scalar_t__ sk_template_parms ;

bool
toplevel_bindings_p (void)
{
  struct cp_binding_level *b = innermost_nonclass_level ();

  return b->kind == sk_namespace || b->kind == sk_template_parms;
}
