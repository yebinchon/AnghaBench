
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int double_int ;


 int FLOOR_DIV_EXPR ;




 int STRIP_NOPS (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_PRECISION (int ) ;
 int double_int_add (int ,int ) ;
 int double_int_mul (int ,int ) ;
 int double_int_neg (int ) ;
 int double_int_one ;
 int double_int_sdivmod (int ,int ,int ,int *) ;
 int double_int_sext (int ,unsigned int) ;
 int double_int_zero_p (int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int tree_to_double_int (int ) ;

__attribute__((used)) static bool
constant_multiple_of (tree top, tree bot, double_int *mul)
{
  tree mby;
  enum tree_code code;
  double_int res, p0, p1;
  unsigned precision = TYPE_PRECISION (TREE_TYPE (top));

  STRIP_NOPS (top);
  STRIP_NOPS (bot);

  if (operand_equal_p (top, bot, 0))
    {
      *mul = double_int_one;
      return 1;
    }

  code = TREE_CODE (top);
  switch (code)
    {
    case 129:
      mby = TREE_OPERAND (top, 1);
      if (TREE_CODE (mby) != 131)
 return 0;

      if (!constant_multiple_of (TREE_OPERAND (top, 0), bot, &res))
 return 0;

      *mul = double_int_sext (double_int_mul (res, tree_to_double_int (mby)),
         precision);
      return 1;

    case 128:
    case 130:
      if (!constant_multiple_of (TREE_OPERAND (top, 0), bot, &p0)
   || !constant_multiple_of (TREE_OPERAND (top, 1), bot, &p1))
 return 0;

      if (code == 130)
 p1 = double_int_neg (p1);
      *mul = double_int_sext (double_int_add (p0, p1), precision);
      return 1;

    case 131:
      if (TREE_CODE (bot) != 131)
 return 0;

      p0 = double_int_sext (tree_to_double_int (bot), precision);
      p1 = double_int_sext (tree_to_double_int (top), precision);
      if (double_int_zero_p (p1))
 return 0;
      *mul = double_int_sext (double_int_sdivmod (p0, p1, FLOOR_DIV_EXPR, &res),
         precision);
      return double_int_zero_p (res);

    default:
      return 0;
    }
}
