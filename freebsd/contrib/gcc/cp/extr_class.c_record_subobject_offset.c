
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int splay_tree ;
struct TYPE_4__ {scalar_t__ value; } ;


 scalar_t__ NULL_TREE ;
 int is_empty_class (scalar_t__) ;
 TYPE_1__* splay_tree_insert (int ,int ,scalar_t__) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
record_subobject_offset (tree type, tree offset, splay_tree offsets)
{
  splay_tree_node n;

  if (!is_empty_class (type))
    return 0;


  n = splay_tree_lookup (offsets, (splay_tree_key) offset);
  if (!n)
    n = splay_tree_insert (offsets,
      (splay_tree_key) offset,
      (splay_tree_value) NULL_TREE);
  n->value = ((splay_tree_value)
       tree_cons (NULL_TREE,
    type,
    (tree) n->value));

  return 0;
}
