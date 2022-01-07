
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GE ;
 int GET_CODE (int ) ;
 int GEU ;
 int LE ;
 int LEU ;
 int NE ;
 int PUT_CODE (int ,int ) ;
 int reverse_condition (int) ;

const char *
output_isel (rtx *operands)
{
  enum rtx_code code;

  code = GET_CODE (operands[1]);
  if (code == GE || code == GEU || code == LE || code == LEU || code == NE)
    {
      PUT_CODE (operands[1], reverse_condition (code));
      return "isel %0,%3,%2,%j1";
    }
  else
    return "isel %0,%2,%3,%j1";
}
