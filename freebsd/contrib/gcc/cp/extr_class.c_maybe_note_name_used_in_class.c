
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int splay_tree_value ;
typedef int splay_tree_key ;
typedef scalar_t__ splay_tree ;
struct TYPE_2__ {scalar_t__ names_used; } ;


 scalar_t__ TYPE_BEING_DEFINED (int ) ;
 int current_class_depth ;
 TYPE_1__* current_class_stack ;
 int current_class_type ;
 scalar_t__ innermost_scope_kind () ;
 scalar_t__ lookup_member (int ,scalar_t__,int ,int) ;
 scalar_t__ sk_class ;
 int splay_tree_compare_pointers ;
 int splay_tree_insert (scalar_t__,int ,int ) ;
 scalar_t__ splay_tree_new (int ,int ,int ) ;

void
maybe_note_name_used_in_class (tree name, tree decl)
{
  splay_tree names_used;


  if (!(innermost_scope_kind() == sk_class
 && TYPE_BEING_DEFINED (current_class_type)))
    return;



  if (lookup_member (current_class_type, name,
                   0, 0))
    return;

  if (!current_class_stack[current_class_depth - 1].names_used)
    current_class_stack[current_class_depth - 1].names_used
      = splay_tree_new (splay_tree_compare_pointers, 0, 0);
  names_used = current_class_stack[current_class_depth - 1].names_used;

  splay_tree_insert (names_used,
       (splay_tree_key) name,
       (splay_tree_value) decl);
}
