
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ names_used; int access; int type; int name; } ;


 int current_access_specifier ;
 size_t current_class_depth ;
 int current_class_name ;
 TYPE_1__* current_class_stack ;
 int current_class_type ;
 int poplevel_class () ;
 int splay_tree_delete (scalar_t__) ;

void
popclass (void)
{
  poplevel_class ();

  current_class_depth--;
  current_class_name = current_class_stack[current_class_depth].name;
  current_class_type = current_class_stack[current_class_depth].type;
  current_access_specifier = current_class_stack[current_class_depth].access;
  if (current_class_stack[current_class_depth].names_used)
    splay_tree_delete (current_class_stack[current_class_depth].names_used);
}
