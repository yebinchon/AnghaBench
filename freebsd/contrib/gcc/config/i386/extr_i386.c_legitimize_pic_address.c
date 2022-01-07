
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CM_SMALL_PIC ;
 scalar_t__ CONST ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int OPTAB_DIRECT ;
 size_t PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_TLS_MODEL (scalar_t__) ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_MACHO ;
 scalar_t__ UNSPEC ;
 int UNSPEC_GOT ;
 int UNSPEC_GOTOFF ;
 int UNSPEC_GOTPCREL ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_simple_binop (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_const_mem (int ,scalar_t__) ;
 int gen_movsi (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtvec (int,scalar_t__) ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int ) ;
 int ix86_GOT_alias_set () ;
 scalar_t__ ix86_cmodel ;
 scalar_t__ legitimate_pic_address_disp_p (scalar_t__) ;
 scalar_t__ local_symbolic_operand (scalar_t__,int ) ;
 scalar_t__ machopic_legitimize_pic_address (scalar_t__,int ,scalar_t__) ;
 scalar_t__ pic_offset_table_rtx ;
 scalar_t__ plus_constant (scalar_t__,int) ;
 int* regs_ever_live ;
 scalar_t__ reload_in_progress ;
 int set_mem_alias_set (scalar_t__,int ) ;
 int x86_64_immediate_operand (scalar_t__,int ) ;

__attribute__((used)) static rtx
legitimize_pic_address (rtx orig, rtx reg)
{
  rtx addr = orig;
  rtx new = orig;
  rtx base;
  if (TARGET_64BIT && legitimate_pic_address_disp_p (addr))
    new = addr;
  else if (TARGET_64BIT
    && ix86_cmodel != CM_SMALL_PIC
    && local_symbolic_operand (addr, Pmode))
    {
      rtx tmpreg;



      if (reload_in_progress)
 regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
      if (GET_CODE (addr) == CONST)
 addr = XEXP (addr, 0);
      if (GET_CODE (addr) == PLUS)
   {
            new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, XEXP (addr, 0)), UNSPEC_GOTOFF);
     new = gen_rtx_PLUS (Pmode, new, XEXP (addr, 1));
   }
 else
          new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOTOFF);
      new = gen_rtx_CONST (Pmode, new);
      if (!reg)
        tmpreg = gen_reg_rtx (Pmode);
      else
 tmpreg = reg;
      emit_move_insn (tmpreg, new);

      if (reg != 0)
 {
   new = expand_simple_binop (Pmode, PLUS, reg, pic_offset_table_rtx,
         tmpreg, 1, OPTAB_DIRECT);
   new = reg;
 }
      else new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, tmpreg);
    }
  else if (!TARGET_64BIT && local_symbolic_operand (addr, Pmode))
    {



      if (reload_in_progress)
 regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
      if (GET_CODE (addr) == CONST)
 addr = XEXP (addr, 0);
      if (GET_CODE (addr) == PLUS)
   {
            new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, XEXP (addr, 0)), UNSPEC_GOTOFF);
     new = gen_rtx_PLUS (Pmode, new, XEXP (addr, 1));
   }
 else
          new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOTOFF);
      new = gen_rtx_CONST (Pmode, new);
      new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, new);

      if (reg != 0)
 {
   emit_move_insn (reg, new);
   new = reg;
 }
    }
  else if (GET_CODE (addr) == SYMBOL_REF && SYMBOL_REF_TLS_MODEL (addr) == 0)
    {
      if (TARGET_64BIT)
 {
   new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOTPCREL);
   new = gen_rtx_CONST (Pmode, new);
   new = gen_const_mem (Pmode, new);
   set_mem_alias_set (new, ix86_GOT_alias_set ());

   if (reg == 0)
     reg = gen_reg_rtx (Pmode);



   emit_insn (gen_movsi (reg, new));
   new = reg;
 }
      else
 {



   if (reload_in_progress)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
   new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOT);
   new = gen_rtx_CONST (Pmode, new);
   new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, new);
   new = gen_const_mem (Pmode, new);
   set_mem_alias_set (new, ix86_GOT_alias_set ());

   if (reg == 0)
     reg = gen_reg_rtx (Pmode);
   emit_move_insn (reg, new);
   new = reg;
 }
    }
  else
    {
      if (GET_CODE (addr) == CONST_INT
   && !x86_64_immediate_operand (addr, VOIDmode))
 {
   if (reg)
     {
       emit_move_insn (reg, addr);
       new = reg;
     }
   else
     new = force_reg (Pmode, addr);
 }
      else if (GET_CODE (addr) == CONST)
 {
   addr = XEXP (addr, 0);




   if (GET_CODE (addr) == UNSPEC
       || (GET_CODE (addr) == PLUS
    && GET_CODE (XEXP (addr, 0)) == UNSPEC))
     return orig;
   gcc_assert (GET_CODE (addr) == PLUS);
 }
      if (GET_CODE (addr) == PLUS)
 {
   rtx op0 = XEXP (addr, 0), op1 = XEXP (addr, 1);



   if (local_symbolic_operand (op0, Pmode)
       && GET_CODE (op1) == CONST_INT)
     {
       if (!TARGET_64BIT)
  {
    if (reload_in_progress)
      regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
    new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, op0),
     UNSPEC_GOTOFF);
    new = gen_rtx_PLUS (Pmode, new, op1);
    new = gen_rtx_CONST (Pmode, new);
    new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, new);

    if (reg != 0)
      {
        emit_move_insn (reg, new);
        new = reg;
      }
  }
       else
  {
    if (INTVAL (op1) < -16*1024*1024
        || INTVAL (op1) >= 16*1024*1024)
      {
        if (!x86_64_immediate_operand (op1, Pmode))
   op1 = force_reg (Pmode, op1);
        new = gen_rtx_PLUS (Pmode, force_reg (Pmode, op0), op1);
      }
  }
     }
   else
     {
       base = legitimize_pic_address (XEXP (addr, 0), reg);
       new = legitimize_pic_address (XEXP (addr, 1),
          base == reg ? NULL_RTX : reg);

       if (GET_CODE (new) == CONST_INT)
  new = plus_constant (base, INTVAL (new));
       else
  {
    if (GET_CODE (new) == PLUS && CONSTANT_P (XEXP (new, 1)))
      {
        base = gen_rtx_PLUS (Pmode, base, XEXP (new, 0));
        new = XEXP (new, 1);
      }
    new = gen_rtx_PLUS (Pmode, base, new);
  }
     }
 }
    }
  return new;
}
