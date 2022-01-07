
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int FLOAT_CONST_TYPE ;
 int INTEGER_CONST_TYPE ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int OTHER_CONST_TYPE ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static inline int
constant_type (tree t)
{
  if (INTEGRAL_TYPE_P (TREE_TYPE (t)))
    return INTEGER_CONST_TYPE;
  else if (SCALAR_FLOAT_TYPE_P (TREE_TYPE (t)))
    return FLOAT_CONST_TYPE;
  else
    return OTHER_CONST_TYPE;
}
