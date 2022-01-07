
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {int binding_depth; struct cp_binding_level* level_chain; } ;


 scalar_t__ ENABLE_SCOPE_CHECKING ;
 int binding_depth ;
 struct cp_binding_level* current_binding_level ;
 int cxx_scope_debug (struct cp_binding_level*,int ,char*) ;
 int indent (int ) ;
 int input_line ;
 scalar_t__ is_class_level ;
 int keep_next_level_flag ;

void
push_binding_level (struct cp_binding_level *scope)
{

  scope->level_chain = current_binding_level;
  current_binding_level = scope;
  keep_next_level_flag = 0;

  if (ENABLE_SCOPE_CHECKING)
    {
      scope->binding_depth = binding_depth;
      indent (binding_depth);
      cxx_scope_debug (scope, input_line, "push");
      is_class_level = 0;
      binding_depth++;
    }
}
