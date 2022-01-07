
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int AGGREGATE_TYPE_P (int ) ;



 int DECL_NONADDRESSABLE_P (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;


__attribute__((used)) static bool
may_be_nonaddressable_p (tree expr)
{
  switch (TREE_CODE (expr))
    {
    case 129:
      return DECL_NONADDRESSABLE_P (TREE_OPERAND (expr, 1))
      || may_be_nonaddressable_p (TREE_OPERAND (expr, 0));

    case 130:
    case 131:
      return may_be_nonaddressable_p (TREE_OPERAND (expr, 0));

    case 128:




      return AGGREGATE_TYPE_P (TREE_TYPE (expr))
      && !AGGREGATE_TYPE_P (TREE_TYPE (TREE_OPERAND (expr, 0)));

    default:
      break;
    }

  return 0;
}
