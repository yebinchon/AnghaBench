
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPOUND_EXPR ;
 int TREE_SIDE_EFFECTS (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int void_type_node ;

tree
add_stmt_to_compound (tree orig, tree new)
{
  if (!new || !TREE_SIDE_EFFECTS (new))
    return orig;
  if (!orig || !TREE_SIDE_EFFECTS (orig))
    return new;
  return build2 (COMPOUND_EXPR, void_type_node, orig, new);
}
