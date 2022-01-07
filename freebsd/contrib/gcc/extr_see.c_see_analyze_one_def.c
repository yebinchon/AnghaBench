
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum entry_type { ____Placeholder_entry_type } entry_type ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_WORD ;

 int EXTENDED_DEF ;
 int GET_CLASS_NARROWEST_MODE (int ) ;
 int GET_CODE (int *) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_MASK (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 scalar_t__ INSN_P (int *) ;
 int INTVAL (int *) ;
 int MAX_MACHINE_MODE ;
 int MODE_INT ;
 int * NEXT_INSN (int *) ;
 int NOT_RELEVANT ;
 int NULL_RTX ;
 int PARALLEL ;
 int * PATTERN (int *) ;
 int * PREV_INSN (int *) ;
 int REGNO (int *) ;
 int REG_LIBCALL ;
 int REG_P (int *) ;
 int REG_RETVAL ;
 int * SET_DEST (int *) ;
 int * SET_SRC (int *) ;

 int SIGN_EXTENDED_DEF ;
 int SUBREG_REG (int *) ;

 int XEXP (int *,int ) ;

 int ZERO_EXTENDED_DEF ;
 int asm_noperands (int *) ;
 int find_reg_note (int *,int ,int ) ;
 int gcc_unreachable () ;
 int reg_set_between_p (int *,int *,int *) ;
 int see_get_extension_data (int *,int*) ;
 int * see_get_extension_reg (int *,int) ;
 int * single_set (int *) ;
 int trunc_int_for_mode (int,int) ;

__attribute__((used)) static enum entry_type
see_analyze_one_def (rtx insn, enum machine_mode *source_mode,
       enum machine_mode *source_mode_unsigned)
{
  enum rtx_code extension_code;
  rtx rhs = ((void*)0);
  rtx lhs = ((void*)0);
  rtx set = ((void*)0);
  rtx source_register = ((void*)0);
  rtx prev_insn = ((void*)0);
  rtx next_insn = ((void*)0);
  enum machine_mode mode;
  enum machine_mode next_source_mode;
  HOST_WIDE_INT val = 0;
  HOST_WIDE_INT val2 = 0;
  int i = 0;

  *source_mode = MAX_MACHINE_MODE;
  *source_mode_unsigned = MAX_MACHINE_MODE;

  if (!insn)
    return NOT_RELEVANT;

  if (!INSN_P (insn))
    return NOT_RELEVANT;

  extension_code = see_get_extension_data (insn, source_mode);
  switch (extension_code)
    {
    case 130:
    case 128:
      source_register = see_get_extension_reg (insn, 0);



      prev_insn = PREV_INSN (insn);
      if (!prev_insn || !INSN_P (prev_insn))
 return NOT_RELEVANT;

      if (!reg_set_between_p (source_register, PREV_INSN (prev_insn), insn))
 return NOT_RELEVANT;

      if (find_reg_note (prev_insn, REG_LIBCALL, NULL_RTX))
 return NOT_RELEVANT;

      if (find_reg_note (prev_insn, REG_RETVAL, NULL_RTX))
 return NOT_RELEVANT;


      if (GET_CODE (PATTERN (prev_insn)) == PARALLEL
    && asm_noperands (PATTERN (prev_insn)) >= 0)
 return NOT_RELEVANT;




      next_insn = NEXT_INSN (insn);
      if (next_insn
   && INSN_P (next_insn)
   && (see_get_extension_data (next_insn, &next_source_mode) !=
       NOT_RELEVANT))
 {
   rtx curr_dest_register = see_get_extension_reg (insn, 1);
   rtx next_source_register = see_get_extension_reg (next_insn, 0);

   if (REGNO (curr_dest_register) == REGNO (next_source_register))
     return NOT_RELEVANT;
 }

      if (extension_code == 130)
 return SIGN_EXTENDED_DEF;
      else
 return ZERO_EXTENDED_DEF;

    case 129:




      set = single_set (insn);
      if (!set)
 return NOT_RELEVANT;
      rhs = SET_SRC (set);
      lhs = SET_DEST (set);



      if (!REG_P (lhs) && !SUBREG_REG (lhs))
 return NOT_RELEVANT;

      switch (GET_CODE (rhs))
 {
 case 130:
   *source_mode = GET_MODE (XEXP (rhs, 0));
   *source_mode_unsigned = MAX_MACHINE_MODE;
   return EXTENDED_DEF;
 case 128:
   *source_mode = MAX_MACHINE_MODE;
   *source_mode_unsigned = GET_MODE (XEXP (rhs, 0));
   return EXTENDED_DEF;
 case 131:

   val = INTVAL (rhs);


   for (mode = GET_CLASS_NARROWEST_MODE (MODE_INT), i = 0;
        GET_MODE_BITSIZE (mode) < BITS_PER_WORD;
        mode = GET_MODE_WIDER_MODE (mode), i++)
     {
       val2 = trunc_int_for_mode (val, mode);
         if (val2 == val && *source_mode == MAX_MACHINE_MODE)
  *source_mode = mode;
       if (val == (val & (HOST_WIDE_INT)GET_MODE_MASK (mode))
    && *source_mode_unsigned == MAX_MACHINE_MODE)
  *source_mode_unsigned = mode;
       if (*source_mode != MAX_MACHINE_MODE
    && *source_mode_unsigned !=MAX_MACHINE_MODE)
  return EXTENDED_DEF;
     }
   if (*source_mode != MAX_MACHINE_MODE
       || *source_mode_unsigned !=MAX_MACHINE_MODE)
     return EXTENDED_DEF;
   return NOT_RELEVANT;
 default:
   return NOT_RELEVANT;
 }
    default:
      gcc_unreachable ();
    }
}
