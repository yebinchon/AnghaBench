
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 size_t ARG_POINTER_REGNUM ;
 int CONST_INT ;
 int FIRST_VIRTUAL_REGISTER ;
 int GET_CODE (int ) ;
 int LAST_VIRTUAL_REGISTER ;


 int REGNO (int ) ;
 int XEXP (int ,int) ;
 int arg_pointer_rtx ;
 int * fixed_regs ;
 int frame_pointer_rtx ;
 int hard_frame_pointer_rtx ;

__attribute__((used)) static bool
fixed_base_plus_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 128:
      if (x == frame_pointer_rtx || x == hard_frame_pointer_rtx)
 return 1;
      if (x == arg_pointer_rtx && fixed_regs[ARG_POINTER_REGNUM])
 return 1;
      if (REGNO (x) >= FIRST_VIRTUAL_REGISTER
   && REGNO (x) <= LAST_VIRTUAL_REGISTER)
 return 1;
      return 0;

    case 129:
      if (GET_CODE (XEXP (x, 1)) != CONST_INT)
 return 0;
      return fixed_base_plus_p (XEXP (x, 0));

    default:
      return 0;
    }
}
