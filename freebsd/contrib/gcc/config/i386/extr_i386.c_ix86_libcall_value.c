
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;





 int FIRST_FLOAT_REG ;
 int FIRST_SSE_REG ;



 scalar_t__ TARGET_64BIT ;





 int * gen_rtx_REG (int,int ) ;
 int ix86_value_regno (int,int *,int *) ;

rtx
ix86_libcall_value (enum machine_mode mode)
{
  if (TARGET_64BIT)
    {
      switch (mode)
 {
 case 133:
 case 135:
 case 136:
 case 138:
 case 130:
 case 134:
 case 137:
 case 131:
   return gen_rtx_REG (mode, FIRST_SSE_REG);
 case 128:
 case 129:
   return gen_rtx_REG (mode, FIRST_FLOAT_REG);
 case 132:
   return ((void*)0);
 default:
   return gen_rtx_REG (mode, 0);
 }
    }
  else
    return gen_rtx_REG (mode, ix86_value_regno (mode, ((void*)0), ((void*)0)));
}
