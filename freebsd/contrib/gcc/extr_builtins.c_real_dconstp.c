
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ COMPLEX_CST ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_VALUES_EQUAL (int ,int const) ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_REALPART (int ) ;
 int TREE_REAL_CST (int ) ;
 scalar_t__ real_zerop (int ) ;

__attribute__((used)) static bool
real_dconstp (tree expr, const REAL_VALUE_TYPE *value)
{
  STRIP_NOPS (expr);

  return ((TREE_CODE (expr) == REAL_CST
    && ! TREE_CONSTANT_OVERFLOW (expr)
    && REAL_VALUES_EQUAL (TREE_REAL_CST (expr), *value))
   || (TREE_CODE (expr) == COMPLEX_CST
       && real_dconstp (TREE_REALPART (expr), value)
       && real_zerop (TREE_IMAGPART (expr))));
}
