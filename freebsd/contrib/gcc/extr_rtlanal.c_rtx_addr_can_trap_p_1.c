
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 size_t ARG_POINTER_REGNUM ;

 int CONSTANT_P (int ) ;
 int CONST_INT ;
 int FIRST_VIRTUAL_REGISTER ;
 int GET_CODE (int ) ;
 int GET_MODE_SIZE (int) ;
 int INTVAL (int ) ;

 int LAST_VIRTUAL_REGISTER ;
 int REGNO (int ) ;
 int SPARC_STACK_BOUNDARY_HACK ;
 int STACK_POINTER_OFFSET ;
 int STRICT_ALIGNMENT ;

 int SYMBOL_REF_WEAK (int ) ;
 int XEXP (int ,int) ;
 int arg_pointer_rtx ;
 int * fixed_regs ;
 int frame_pointer_rtx ;
 int hard_frame_pointer_rtx ;
 int pic_offset_table_rtx ;
 int stack_pointer_rtx ;

__attribute__((used)) static int
rtx_addr_can_trap_p_1 (rtx x, enum machine_mode mode, bool unaligned_mems)
{
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 128:
      return SYMBOL_REF_WEAK (x);

    case 138:
      return 0;

    case 129:

      if (x == frame_pointer_rtx || x == hard_frame_pointer_rtx
   || x == stack_pointer_rtx

   || (x == arg_pointer_rtx && fixed_regs[ARG_POINTER_REGNUM]))
 return 0;

      if (REGNO (x) >= FIRST_VIRTUAL_REGISTER
   && REGNO (x) <= LAST_VIRTUAL_REGISTER)
 return 0;
      return 1;

    case 139:
      return rtx_addr_can_trap_p_1 (XEXP (x, 0), mode, unaligned_mems);

    case 136:




      if (!rtx_addr_can_trap_p_1 (XEXP (x, 0), mode, unaligned_mems)
   && GET_CODE (XEXP (x, 1)) == CONST_INT)
 {
   HOST_WIDE_INT offset;

   if (!STRICT_ALIGNMENT
       || !unaligned_mems
       || GET_MODE_SIZE (mode) == 0)
     return 0;

   offset = INTVAL (XEXP (x, 1));
   return offset % GET_MODE_SIZE (mode) != 0;
 }


      if (XEXP (x, 0) == pic_offset_table_rtx && CONSTANT_P (XEXP (x, 1)))
 return 0;

      return 1;

    case 137:
    case 130:
      return rtx_addr_can_trap_p_1 (XEXP (x, 1), mode, unaligned_mems);

    case 132:
    case 131:
    case 135:
    case 134:
    case 133:
      return rtx_addr_can_trap_p_1 (XEXP (x, 0), mode, unaligned_mems);

    default:
      break;
    }


  return 1;
}
