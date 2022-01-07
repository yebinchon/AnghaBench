
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;



 int LAST_AND_UNUSED_TREE_CODE ;
 int MAX_EXPR ;

 int MINUS_EXPR ;
 int MIN_EXPR ;

 int MULT_EXPR ;

 int PLUS_EXPR ;
 int RDIV_EXPR ;



int
rtx_to_tree_code (enum rtx_code code)
{
  enum tree_code tcode;

  switch (code)
    {
    case 130:
      tcode = PLUS_EXPR;
      break;
    case 132:
      tcode = MINUS_EXPR;
      break;
    case 131:
      tcode = MULT_EXPR;
      break;
    case 133:
      tcode = RDIV_EXPR;
      break;
    case 128:
      tcode = MIN_EXPR;
      break;
    case 129:
      tcode = MAX_EXPR;
      break;
    default:
      tcode = LAST_AND_UNUSED_TREE_CODE;
      break;
    }
  return ((int) tcode);
}
