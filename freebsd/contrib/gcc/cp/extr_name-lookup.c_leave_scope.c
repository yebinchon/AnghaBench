
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; scalar_t__ binding_depth; struct TYPE_8__* level_chain; scalar_t__ has_visibility; } ;
typedef TYPE_1__ cxx_scope ;


 scalar_t__ ENABLE_SCOPE_CHECKING ;
 scalar_t__ NAMESPACE_LEVEL (int ) ;
 scalar_t__ binding_depth ;
 TYPE_1__* class_binding_level ;
 TYPE_1__* current_binding_level ;
 int cxx_scope_debug (TYPE_1__*,int ,char*) ;
 TYPE_1__* free_binding_level ;
 int gcc_assert (int) ;
 int global_namespace ;
 int global_scope_p (TYPE_1__*) ;
 int indent (scalar_t__) ;
 int input_line ;
 int is_class_level ;
 int pop_visibility () ;
 scalar_t__ sk_class ;
 scalar_t__ sk_namespace ;
 int verbatim (char*) ;

cxx_scope *
leave_scope (void)
{
  cxx_scope *scope = current_binding_level;

  if (scope->kind == sk_namespace && class_binding_level)
    current_binding_level = class_binding_level;


  if (NAMESPACE_LEVEL (global_namespace))
    gcc_assert (!global_scope_p (scope));

  if (ENABLE_SCOPE_CHECKING)
    {
      indent (--binding_depth);
      cxx_scope_debug (scope, input_line, "leave");
      if (is_class_level != (scope == class_binding_level))
 {
   indent (binding_depth);
   verbatim ("XXX is_class_level != (current_scope == class_scope)\n");
 }
      is_class_level = 0;
    }







  current_binding_level = scope->level_chain;






  if (scope->kind != sk_namespace
      && scope->kind != sk_class)
    {
      scope->level_chain = free_binding_level;
      gcc_assert (!ENABLE_SCOPE_CHECKING
    || scope->binding_depth == binding_depth);
      free_binding_level = scope;
    }



  if (scope->kind == sk_class)
    {
      class_binding_level = ((void*)0);
      for (scope = current_binding_level; scope; scope = scope->level_chain)
 if (scope->kind == sk_class)
   {
     class_binding_level = scope;
     break;
   }
    }

  return current_binding_level;
}
