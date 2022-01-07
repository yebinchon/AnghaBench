
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum comparison_code { ____Placeholder_comparison_code } comparison_code ;
 int EQ_EXPR ;
 int GE_EXPR ;
 int GT_EXPR ;
 int LE_EXPR ;
 int LTGT_EXPR ;
 int LT_EXPR ;
 int NE_EXPR ;
 int ORDERED_EXPR ;
 int UNEQ_EXPR ;
 int UNGE_EXPR ;
 int UNGT_EXPR ;
 int UNLE_EXPR ;
 int UNLT_EXPR ;
 int UNORDERED_EXPR ;
 int gcc_unreachable () ;

__attribute__((used)) static enum tree_code
compcode_to_comparison (enum comparison_code code)
{
  switch (code)
    {
    case 137:
      return LT_EXPR;
    case 141:
      return EQ_EXPR;
    case 138:
      return LE_EXPR;
    case 139:
      return GT_EXPR;
    case 135:
      return NE_EXPR;
    case 140:
      return GE_EXPR;
    case 134:
      return ORDERED_EXPR;
    case 128:
      return UNORDERED_EXPR;
    case 129:
      return UNLT_EXPR;
    case 133:
      return UNEQ_EXPR;
    case 130:
      return UNLE_EXPR;
    case 131:
      return UNGT_EXPR;
    case 136:
      return LTGT_EXPR;
    case 132:
      return UNGE_EXPR;
    default:
      gcc_unreachable ();
    }
}
