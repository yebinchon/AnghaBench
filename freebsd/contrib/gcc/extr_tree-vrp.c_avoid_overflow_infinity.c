
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int gcc_assert (scalar_t__) ;
 int is_overflow_infinity (int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;

__attribute__((used)) static inline tree
avoid_overflow_infinity (tree val)
{
  if (!is_overflow_infinity (val))
    return val;

  if (operand_equal_p (val, TYPE_MAX_VALUE (TREE_TYPE (val)), 0))
    return TYPE_MAX_VALUE (TREE_TYPE (val));
  else
    {



      return TYPE_MIN_VALUE (TREE_TYPE (val));
    }
}
