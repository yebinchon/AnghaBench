
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_QUALS (int ) ;
 scalar_t__ TYPE_UNQUALIFIED ;
 scalar_t__ VOID_TYPE_P (int ) ;
 scalar_t__ integer_zerop (int ) ;

__attribute__((used)) static bool
null_pointer_constant_p (tree expr)
{


  tree type = TREE_TYPE (expr);
  return (TREE_CODE (expr) == INTEGER_CST
   && !TREE_CONSTANT_OVERFLOW (expr)
   && integer_zerop (expr)
   && (INTEGRAL_TYPE_P (type)
       || (TREE_CODE (type) == POINTER_TYPE
    && VOID_TYPE_P (TREE_TYPE (type))
    && TYPE_QUALS (TREE_TYPE (type)) == TYPE_UNQUALIFIED)));
}
