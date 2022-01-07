
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int COMPOUND_EXPR ;
 int COND_EXPR ;
 int SAVE_EXPR ;
 int TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (int) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_NOT_EXPR ;
 int TRUTH_ORIF_EXPR ;
 int operand_equal_p (scalar_t__,scalar_t__,int ) ;






__attribute__((used)) static int
twoval_comparison_p (tree arg, tree *cval1, tree *cval2, int *save_p)
{
  enum tree_code code = TREE_CODE (arg);
  enum tree_code_class class = TREE_CODE_CLASS (code);


  if (class == 129 && code == TRUTH_NOT_EXPR)
    class = 128;
  else if (class == 129
    && (code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR
        || code == COMPOUND_EXPR))
    class = 132;

  else if (class == 129 && code == SAVE_EXPR
    && ! TREE_SIDE_EFFECTS (TREE_OPERAND (arg, 0)))
    {


      if (*cval1 || *cval2)
 return 0;

      class = 128;
      *save_p = 1;
    }

  switch (class)
    {
    case 128:
      return twoval_comparison_p (TREE_OPERAND (arg, 0), cval1, cval2, save_p);

    case 132:
      return (twoval_comparison_p (TREE_OPERAND (arg, 0), cval1, cval2, save_p)
       && twoval_comparison_p (TREE_OPERAND (arg, 1),
          cval1, cval2, save_p));

    case 130:
      return 1;

    case 129:
      if (code == COND_EXPR)
 return (twoval_comparison_p (TREE_OPERAND (arg, 0),
         cval1, cval2, save_p)
  && twoval_comparison_p (TREE_OPERAND (arg, 1),
     cval1, cval2, save_p)
  && twoval_comparison_p (TREE_OPERAND (arg, 2),
     cval1, cval2, save_p));
      return 0;

    case 131:






      if (operand_equal_p (TREE_OPERAND (arg, 0),
      TREE_OPERAND (arg, 1), 0))
 return 0;

      if (*cval1 == 0)
 *cval1 = TREE_OPERAND (arg, 0);
      else if (operand_equal_p (*cval1, TREE_OPERAND (arg, 0), 0))
 ;
      else if (*cval2 == 0)
 *cval2 = TREE_OPERAND (arg, 0);
      else if (operand_equal_p (*cval2, TREE_OPERAND (arg, 0), 0))
 ;
      else
 return 0;

      if (operand_equal_p (*cval1, TREE_OPERAND (arg, 1), 0))
 ;
      else if (*cval2 == 0)
 *cval2 = TREE_OPERAND (arg, 1);
      else if (operand_equal_p (*cval2, TREE_OPERAND (arg, 1), 0))
 ;
      else
 return 0;

      return 1;

    default:
      return 0;
    }
}
