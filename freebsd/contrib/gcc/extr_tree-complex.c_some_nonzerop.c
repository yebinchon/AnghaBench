
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ REAL_CST ;
 int REAL_VALUES_IDENTICAL (int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_REAL_CST (int ) ;
 int dconst0 ;
 int integer_zerop (int ) ;

__attribute__((used)) static int
some_nonzerop (tree t)
{
  int zerop = 0;

  if (TREE_CODE (t) == REAL_CST)
    zerop = REAL_VALUES_IDENTICAL (TREE_REAL_CST (t), dconst0);
  else if (TREE_CODE (t) == INTEGER_CST)
    zerop = integer_zerop (t);

  return !zerop;
}
