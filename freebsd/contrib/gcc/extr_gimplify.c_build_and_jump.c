
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int GOTO_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ create_artificial_label () ;
 int void_type_node ;

tree
build_and_jump (tree *label_p)
{
  if (label_p == ((void*)0))

    return NULL_TREE;

  if (*label_p == NULL_TREE)
    {
      tree label = create_artificial_label ();
      *label_p = label;
    }

  return build1 (GOTO_EXPR, void_type_node, *label_p);
}
