
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLEX_CST ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_REALPART (int ) ;
 int TREE_REAL_CST (int ) ;
 int dconst0 ;

int
real_zerop (tree expr)
{
  STRIP_NOPS (expr);

  return ((TREE_CODE (expr) == REAL_CST
    && REAL_VALUES_EQUAL (TREE_REAL_CST (expr), dconst0))
   || (TREE_CODE (expr) == COMPLEX_CST
       && real_zerop (TREE_REALPART (expr))
       && real_zerop (TREE_IMAGPART (expr))));
}
