
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int rtvec ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONST1_RTX (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_NUNITS (int) ;
 scalar_t__ RTVEC_ELT (int ,int) ;
 scalar_t__ gen_rtx_raw_CONST_VECTOR (int,int ) ;

rtx
gen_rtx_CONST_VECTOR (enum machine_mode mode, rtvec v)
{
  enum machine_mode inner = GET_MODE_INNER (mode);
  int nunits = GET_MODE_NUNITS (mode);
  rtx x;
  int i;


  x = RTVEC_ELT (v, nunits - 1);
  for (i = nunits - 2; i >= 0; i--)
    if (RTVEC_ELT (v, i) != x)
      break;



  if (i == -1)
    {
      if (x == CONST0_RTX (inner))
 return CONST0_RTX (mode);
      else if (x == CONST1_RTX (inner))
 return CONST1_RTX (mode);
    }

  return gen_rtx_raw_CONST_VECTOR (mode, v);
}
