
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int splay_tree ;
struct TYPE_3__ {scalar_t__ value; } ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int is_empty_class (scalar_t__) ;
 scalar_t__ same_type_p (int ,scalar_t__) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

__attribute__((used)) static int
check_subobject_offset (tree type, tree offset, splay_tree offsets)
{
  splay_tree_node n;
  tree t;

  if (!is_empty_class (type))
    return 0;


  n = splay_tree_lookup (offsets, (splay_tree_key) offset);
  if (!n)
    return 0;

  for (t = (tree) n->value; t; t = TREE_CHAIN (t))
    if (same_type_p (TREE_VALUE (t), type))
      return 1;

  return 0;
}
