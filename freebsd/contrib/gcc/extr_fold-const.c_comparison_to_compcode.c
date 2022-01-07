
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum comparison_code { ____Placeholder_comparison_code } comparison_code ;


 int COMPCODE_EQ ;
 int COMPCODE_GE ;
 int COMPCODE_GT ;
 int COMPCODE_LE ;
 int COMPCODE_LT ;
 int COMPCODE_LTGT ;
 int COMPCODE_NE ;
 int COMPCODE_ORD ;
 int COMPCODE_UNEQ ;
 int COMPCODE_UNGE ;
 int COMPCODE_UNGT ;
 int COMPCODE_UNLE ;
 int COMPCODE_UNLT ;
 int COMPCODE_UNORD ;
 int gcc_unreachable () ;

__attribute__((used)) static enum comparison_code
comparison_to_compcode (enum tree_code code)
{
  switch (code)
    {
    case 136:
      return COMPCODE_LT;
    case 141:
      return COMPCODE_EQ;
    case 138:
      return COMPCODE_LE;
    case 139:
      return COMPCODE_GT;
    case 135:
      return COMPCODE_NE;
    case 140:
      return COMPCODE_GE;
    case 134:
      return COMPCODE_ORD;
    case 128:
      return COMPCODE_UNORD;
    case 129:
      return COMPCODE_UNLT;
    case 133:
      return COMPCODE_UNEQ;
    case 130:
      return COMPCODE_UNLE;
    case 131:
      return COMPCODE_UNGT;
    case 137:
      return COMPCODE_LTGT;
    case 132:
      return COMPCODE_UNGE;
    default:
      gcc_unreachable ();
    }
}
