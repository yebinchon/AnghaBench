
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 scalar_t__ SAVE_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int pending_sizes ;
 int skip_simple_arithmetic (int ) ;
 int tree_cons (int ,int ,int ) ;

void
put_pending_size (tree expr)
{


  expr = skip_simple_arithmetic (expr);

  if (TREE_CODE (expr) == SAVE_EXPR)
    pending_sizes = tree_cons (NULL_TREE, expr, pending_sizes);
}
