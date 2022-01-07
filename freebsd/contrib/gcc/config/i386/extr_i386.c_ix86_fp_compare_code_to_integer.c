
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int EQ ;

 int GEU ;

 int GTU ;
 int LEU ;

 int LTU ;
 int NE ;


 int UNKNOWN ;




enum rtx_code
ix86_fp_compare_code_to_integer (enum rtx_code code)
{
  switch (code)
    {
    case 134:
      return GTU;
    case 135:
      return GEU;
    case 132:
    case 128:
      return code;
      break;
    case 131:
      return EQ;
      break;
    case 129:
      return LTU;
      break;
    case 130:
      return LEU;
      break;
    case 133:
      return NE;
      break;
    default:
      return UNKNOWN;
    }
}
