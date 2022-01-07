
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_NAMESPACE_ASSOCIATIONS (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int purpose_member (scalar_t__,scalar_t__) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

bool
is_associated_namespace (tree current, tree scope)
{
  tree seen = NULL_TREE;
  tree todo = NULL_TREE;
  tree t;
  while (1)
    {
      if (scope == current)
 return 1;
      seen = tree_cons (scope, NULL_TREE, seen);
      for (t = DECL_NAMESPACE_ASSOCIATIONS (scope); t; t = TREE_CHAIN (t))
 if (!purpose_member (TREE_PURPOSE (t), seen))
   todo = tree_cons (TREE_PURPOSE (t), NULL_TREE, todo);
      if (todo)
 {
   scope = TREE_PURPOSE (todo);
   todo = TREE_CHAIN (todo);
 }
      else
 return 0;
    }
}
