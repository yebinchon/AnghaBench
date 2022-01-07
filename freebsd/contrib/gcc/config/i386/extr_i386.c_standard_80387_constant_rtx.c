
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int ) ;
 int XFmode ;
 int ext_80387_constants_init ;
 int * ext_80387_constants_table ;
 int gcc_unreachable () ;
 int init_ext_80387_constants () ;

rtx
standard_80387_constant_rtx (int idx)
{
  int i;

  if (! ext_80387_constants_init)
    init_ext_80387_constants ();

  switch (idx)
    {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      i = idx - 3;
      break;

    default:
      gcc_unreachable ();
    }

  return CONST_DOUBLE_FROM_REAL_VALUE (ext_80387_constants_table[i],
           XFmode);
}
