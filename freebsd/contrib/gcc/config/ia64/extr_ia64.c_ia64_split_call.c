
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int FUNCTION_ARG_REGNO_P (int ) ;
 scalar_t__ GR_REGNO_P (int ) ;
 int Pmode ;
 int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int TARGET_CONST_GP ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int ) ;
 int emit_call_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ gen_call_nogp (scalar_t__,scalar_t__) ;
 scalar_t__ gen_call_value_nogp (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_MEM (int ,scalar_t__) ;
 scalar_t__ gen_rtx_POST_DEC (int ,scalar_t__) ;
 scalar_t__ gen_rtx_POST_INC (int ,scalar_t__) ;
 scalar_t__ gen_sibcall_nogp (scalar_t__) ;
 int ia64_reload_gp () ;
 scalar_t__ pic_offset_table_rtx ;
 int regs_invalidated_by_call ;

void
ia64_split_call (rtx retval, rtx addr, rtx retaddr, rtx scratch_r,
   rtx scratch_b, int noreturn_p, int sibcall_p)
{
  rtx insn;
  bool is_desc = 0;



  if (REG_P (addr) && GR_REGNO_P (REGNO (addr)))
    {
      rtx tmp;
      bool addr_dead_p;
      addr_dead_p = ((noreturn_p || sibcall_p
        || TEST_HARD_REG_BIT (regs_invalidated_by_call,
         REGNO (addr)))
       && !FUNCTION_ARG_REGNO_P (REGNO (addr)));


      tmp = gen_rtx_POST_INC (Pmode, addr);
      tmp = gen_rtx_MEM (Pmode, tmp);
      emit_move_insn (scratch_r, tmp);
      emit_move_insn (scratch_b, scratch_r);



      if (!addr_dead_p)
 tmp = gen_rtx_POST_DEC (Pmode, addr);
      else
 tmp = addr;
      tmp = gen_rtx_MEM (Pmode, tmp);
      emit_move_insn (pic_offset_table_rtx, tmp);

      is_desc = 1;
      addr = scratch_b;
    }

  if (sibcall_p)
    insn = gen_sibcall_nogp (addr);
  else if (retval)
    insn = gen_call_value_nogp (retval, addr, retaddr);
  else
    insn = gen_call_nogp (addr, retaddr);
  emit_call_insn (insn);

  if ((!TARGET_CONST_GP || is_desc) && !noreturn_p && !sibcall_p)
    ia64_reload_gp ();
}
