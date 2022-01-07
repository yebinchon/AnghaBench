
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_3__ {int value; } ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ POINTER_TYPE_P (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_MAIN_VARIANT (int *) ;
 int * discover_unique_type (int *) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int type_to_canon_type ;
 int type_to_consider (int *) ;

__attribute__((used)) static tree
get_canon_type (tree type, bool see_thru_ptrs, bool see_thru_arrays)
{
  splay_tree_node result;

  if (!type || !type_to_consider (type))
    return ((void*)0);

  type = TYPE_MAIN_VARIANT (type);
  if (see_thru_arrays)
    while (POINTER_TYPE_P (type) || TREE_CODE (type) == ARRAY_TYPE)
      type = TYPE_MAIN_VARIANT (TREE_TYPE (type));

  else if (see_thru_ptrs)
    while (POINTER_TYPE_P (type))
 type = TYPE_MAIN_VARIANT (TREE_TYPE (type));

  result = splay_tree_lookup(type_to_canon_type, (splay_tree_key) type);

  if (result == ((void*)0))
    return discover_unique_type (type);
  else return (tree) result->value;
}
