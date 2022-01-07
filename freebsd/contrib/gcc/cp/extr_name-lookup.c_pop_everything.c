
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; } ;


 scalar_t__ ENABLE_SCOPE_CHECKING ;
 TYPE_1__* current_binding_level ;
 int pop_nested_class () ;
 int poplevel (int ,int ,int ) ;
 scalar_t__ sk_class ;
 int toplevel_bindings_p () ;
 int verbatim (char*) ;

void
pop_everything (void)
{
  if (ENABLE_SCOPE_CHECKING)
    verbatim ("XXX entering pop_everything ()\n");
  while (!toplevel_bindings_p ())
    {
      if (current_binding_level->kind == sk_class)
 pop_nested_class ();
      else
 poplevel (0, 0, 0);
    }
  if (ENABLE_SCOPE_CHECKING)
    verbatim ("XXX leaving pop_everything ()\n");
}
