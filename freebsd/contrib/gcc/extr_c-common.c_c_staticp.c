
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ COMPOUND_LITERAL_EXPR ;
 int COMPOUND_LITERAL_EXPR_DECL (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 scalar_t__ TREE_STATIC (int ) ;

tree
c_staticp (tree exp)
{
  return (TREE_CODE (exp) == COMPOUND_LITERAL_EXPR
   && TREE_STATIC (COMPOUND_LITERAL_EXPR_DECL (exp))
   ? exp : ((void*)0));
}
