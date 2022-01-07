
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum comparison_code { ____Placeholder_comparison_code } comparison_code ;


 int COMPCODE_EQ ;
 int COMPCODE_FALSE ;
 int COMPCODE_LTGT ;
 int COMPCODE_NE ;
 int COMPCODE_ORD ;
 int COMPCODE_TRUE ;
 int COMPCODE_UNORD ;
 int HONOR_NANS (int ) ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;




 int TYPE_MODE (int ) ;
 int comparison_to_compcode (int) ;
 int compcode_to_comparison (int) ;
 int constant_boolean_node (int,int ) ;
 scalar_t__ flag_trapping_math ;
 int fold_build2 (int ,int ,int ,int ) ;

tree
combine_comparisons (enum tree_code code, enum tree_code lcode,
       enum tree_code rcode, tree truth_type,
       tree ll_arg, tree lr_arg)
{
  bool honor_nans = HONOR_NANS (TYPE_MODE (TREE_TYPE (ll_arg)));
  enum comparison_code lcompcode = comparison_to_compcode (lcode);
  enum comparison_code rcompcode = comparison_to_compcode (rcode);
  enum comparison_code compcode;

  switch (code)
    {
    case 130: case 131:
      compcode = lcompcode & rcompcode;
      break;

    case 128: case 129:
      compcode = lcompcode | rcompcode;
      break;

    default:
      return NULL_TREE;
    }

  if (!honor_nans)
    {


      compcode &= ~COMPCODE_UNORD;
      if (compcode == COMPCODE_LTGT)
 compcode = COMPCODE_NE;
      else if (compcode == COMPCODE_ORD)
 compcode = COMPCODE_TRUE;
    }
   else if (flag_trapping_math)
     {


 bool ltrap = (lcompcode & COMPCODE_UNORD) == 0
       && (lcompcode != COMPCODE_EQ)
       && (lcompcode != COMPCODE_ORD);
 bool rtrap = (rcompcode & COMPCODE_UNORD) == 0
       && (rcompcode != COMPCODE_EQ)
       && (rcompcode != COMPCODE_ORD);
 bool trap = (compcode & COMPCODE_UNORD) == 0
      && (compcode != COMPCODE_EQ)
      && (compcode != COMPCODE_ORD);







        if ((code == 129 && (lcompcode & COMPCODE_UNORD))
            || (code == 131 && !(lcompcode & COMPCODE_UNORD)))
          rtrap = 0;



 if (rtrap && !ltrap
     && (code == 131 || code == 129))
   return NULL_TREE;


 if ((ltrap || rtrap) != trap)
   return NULL_TREE;
      }

  if (compcode == COMPCODE_TRUE)
    return constant_boolean_node (1, truth_type);
  else if (compcode == COMPCODE_FALSE)
    return constant_boolean_node (0, truth_type);
  else
    return fold_build2 (compcode_to_comparison (compcode),
   truth_type, ll_arg, lr_arg);
}
