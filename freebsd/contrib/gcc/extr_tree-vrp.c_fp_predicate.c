
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPARISON_CLASS_P (int ) ;
 scalar_t__ FLOAT_TYPE_P (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static inline bool
fp_predicate (tree expr)
{
  return (COMPARISON_CLASS_P (expr)
   && FLOAT_TYPE_P (TREE_TYPE (TREE_OPERAND (expr, 0))));
}
