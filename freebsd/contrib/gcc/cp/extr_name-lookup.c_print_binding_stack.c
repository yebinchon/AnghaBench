
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {struct cp_binding_level* level_chain; } ;


 scalar_t__ NAMESPACE_LEVEL (int ) ;
 struct cp_binding_level* class_binding_level ;
 struct cp_binding_level* current_binding_level ;
 int fprintf (int ,char*,...) ;
 int global_namespace ;
 int print_binding_level (scalar_t__) ;
 int print_other_binding_stack (struct cp_binding_level*) ;
 int stderr ;

void
print_binding_stack (void)
{
  struct cp_binding_level *b;
  fprintf (stderr, "current_binding_level=%p\n"
    "class_binding_level=%p\n"
    "NAMESPACE_LEVEL (global_namespace)=%p\n",
    (void *) current_binding_level, (void *) class_binding_level,
    (void *) NAMESPACE_LEVEL (global_namespace));
  if (class_binding_level)
    {
      for (b = class_binding_level; b; b = b->level_chain)
 if (b == current_binding_level)
   break;
      if (b)
 b = class_binding_level;
      else
 b = current_binding_level;
    }
  else
    b = current_binding_level;
  print_other_binding_stack (b);
  fprintf (stderr, "global:\n");
  print_binding_level (NAMESPACE_LEVEL (global_namespace));
}
