
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLEX_CST ;
 scalar_t__ INTEGER_CST ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 scalar_t__ TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_REALPART (int ) ;
 scalar_t__ integer_zerop (int ) ;

int
integer_onep (tree expr)
{
  STRIP_NOPS (expr);

  return ((TREE_CODE (expr) == INTEGER_CST
    && TREE_INT_CST_LOW (expr) == 1
    && TREE_INT_CST_HIGH (expr) == 0)
   || (TREE_CODE (expr) == COMPLEX_CST
       && integer_onep (TREE_REALPART (expr))
       && integer_zerop (TREE_IMAGPART (expr))));
}
