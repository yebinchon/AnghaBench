
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




 int gcc_unreachable () ;

enum rtx_code
minmax_code (rtx x)
{
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 131:
      return GE;
    case 130:
      return LE;
    case 128:
      return LEU;
    case 129:
      return GEU;
    default:
      gcc_unreachable ();
    }
}
