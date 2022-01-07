
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ is_gimple_reg (int ) ;

__attribute__((used)) static bool
is_complex_reg (tree lhs)
{
  return TREE_CODE (TREE_TYPE (lhs)) == COMPLEX_TYPE && is_gimple_reg (lhs);
}
