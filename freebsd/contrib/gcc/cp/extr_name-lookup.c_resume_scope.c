
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {int binding_depth; struct cp_binding_level* level_chain; } ;


 scalar_t__ ENABLE_SCOPE_CHECKING ;
 int binding_depth ;
 int class_binding_level ;
 struct cp_binding_level* current_binding_level ;
 int cxx_scope_debug (struct cp_binding_level*,int ,char*) ;
 int gcc_assert (int) ;
 int indent (int ) ;
 int input_line ;
 scalar_t__ is_class_level ;

__attribute__((used)) static void
resume_scope (struct cp_binding_level* b)
{


  gcc_assert (!class_binding_level);

  gcc_assert (b->level_chain == current_binding_level);
  current_binding_level = b;
  if (ENABLE_SCOPE_CHECKING)
    {
      b->binding_depth = binding_depth;
      indent (binding_depth);
      cxx_scope_debug (b, input_line, "resume");
      is_class_level = 0;
      binding_depth++;
    }
}
