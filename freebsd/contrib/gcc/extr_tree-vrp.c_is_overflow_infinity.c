
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONSTANT_CLASS_P (int ) ;
 scalar_t__ TREE_OVERFLOW (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 scalar_t__ needs_overflow_infinity (int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;

__attribute__((used)) static inline bool
is_overflow_infinity (tree val)
{
  return (needs_overflow_infinity (TREE_TYPE (val))
   && CONSTANT_CLASS_P (val)
   && TREE_OVERFLOW (val)
   && (operand_equal_p (val, TYPE_MAX_VALUE (TREE_TYPE (val)), 0)
       || operand_equal_p (val, TYPE_MIN_VALUE (TREE_TYPE (val)), 0)));
}
