
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {struct cp_binding_level* level_chain; } ;


 int fprintf (int ,char*,void*) ;
 int global_scope_p (struct cp_binding_level*) ;
 int print_binding_level (struct cp_binding_level*) ;
 int stderr ;

void
print_other_binding_stack (struct cp_binding_level *stack)
{
  struct cp_binding_level *level;
  for (level = stack; !global_scope_p (level); level = level->level_chain)
    {
      fprintf (stderr, "binding level %p\n", (void *) level);
      print_binding_level (level);
    }
}
