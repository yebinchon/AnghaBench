
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLEX_CST ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ REAL_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CONSTANT_OVERFLOW (int ) ;
 scalar_t__ VECTOR_CST ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 scalar_t__ warn_overflow ;

void
constant_expression_warning (tree value)
{
  if ((TREE_CODE (value) == INTEGER_CST || TREE_CODE (value) == REAL_CST
       || TREE_CODE (value) == VECTOR_CST
       || TREE_CODE (value) == COMPLEX_CST)
      && TREE_CONSTANT_OVERFLOW (value)
      && warn_overflow
      && pedantic)
    pedwarn ("overflow in constant expression");
}
