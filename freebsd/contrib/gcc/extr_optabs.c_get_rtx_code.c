
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int EQ ;

 int GE ;
 int GEU ;

 int GT ;
 int GTU ;

 int LE ;
 int LEU ;

 int LT ;
 int LTGT ;

 int LTU ;

 int NE ;

 int ORDERED ;

 int UNEQ ;

 int UNGE ;

 int UNGT ;

 int UNLE ;

 int UNLT ;

 int UNORDERED ;

 int gcc_unreachable () ;

__attribute__((used)) static enum rtx_code
get_rtx_code (enum tree_code tcode, bool unsignedp)
{
  enum rtx_code code;
  switch (tcode)
    {
    case 141:
      code = EQ;
      break;
    case 135:
      code = NE;
      break;
    case 136:
      code = unsignedp ? LTU : LT;
      break;
    case 138:
      code = unsignedp ? LEU : LE;
      break;
    case 139:
      code = unsignedp ? GTU : GT;
      break;
    case 140:
      code = unsignedp ? GEU : GE;
      break;

    case 128:
      code = UNORDERED;
      break;
    case 134:
      code = ORDERED;
      break;
    case 129:
      code = UNLT;
      break;
    case 130:
      code = UNLE;
      break;
    case 131:
      code = UNGT;
      break;
    case 132:
      code = UNGE;
      break;
    case 133:
      code = UNEQ;
      break;
    case 137:
      code = LTGT;
      break;

    default:
      gcc_unreachable ();
    }
  return code;
}
