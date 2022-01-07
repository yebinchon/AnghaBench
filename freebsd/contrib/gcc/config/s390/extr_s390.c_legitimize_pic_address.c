
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 int DISP_IN_RANGE (int) ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NULL_RTX ;
 size_t PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_LOCAL_P (scalar_t__) ;
 scalar_t__ TARGET_CPU_ZARCH ;
 int TLS_SYMBOLIC_CONST (scalar_t__) ;
 scalar_t__ UNSPEC ;





 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int ) ;
 int XVECLEN (scalar_t__,int ) ;
 scalar_t__ const1_rtx ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int flag_pic ;
 scalar_t__ force_const_mem (int ,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_const_mem (int ,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtvec (int,scalar_t__) ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int const) ;
 scalar_t__ larl_operand (scalar_t__,int ) ;
 scalar_t__ pic_offset_table_rtx ;
 scalar_t__ plus_constant (scalar_t__,int) ;
 int* regs_ever_live ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 int s390_load_address (scalar_t__,scalar_t__) ;

rtx
legitimize_pic_address (rtx orig, rtx reg)
{
  rtx addr = orig;
  rtx new = orig;
  rtx base;

  gcc_assert (!TLS_SYMBOLIC_CONST (addr));

  if (GET_CODE (addr) == LABEL_REF
      || (GET_CODE (addr) == SYMBOL_REF && SYMBOL_REF_LOCAL_P (addr)))
    {

      if (TARGET_CPU_ZARCH && larl_operand (addr, VOIDmode))
        {



        }
      else
        {


          rtx temp = reg? reg : gen_reg_rtx (Pmode);

   if (reload_in_progress || reload_completed)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          addr = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 130);
          addr = gen_rtx_CONST (Pmode, addr);
          addr = force_const_mem (Pmode, addr);
   emit_move_insn (temp, addr);

          new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, temp);
          if (reg != 0)
            {
              s390_load_address (reg, new);
              new = reg;
            }
        }
    }
  else if (GET_CODE (addr) == SYMBOL_REF)
    {
      if (reg == 0)
        reg = gen_reg_rtx (Pmode);

      if (flag_pic == 1)
        {



   if (reload_in_progress || reload_completed)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 132);
          new = gen_rtx_CONST (Pmode, new);
          new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, new);
          new = gen_const_mem (Pmode, new);
          emit_move_insn (reg, new);
          new = reg;
        }
      else if (TARGET_CPU_ZARCH)
        {



          rtx temp = gen_reg_rtx (Pmode);

          new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 131);
          new = gen_rtx_CONST (Pmode, new);
          emit_move_insn (temp, new);

          new = gen_const_mem (Pmode, temp);
          emit_move_insn (reg, new);
          new = reg;
        }
      else
        {



          rtx temp = gen_reg_rtx (Pmode);

   if (reload_in_progress || reload_completed)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          addr = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 132);
          addr = gen_rtx_CONST (Pmode, addr);
          addr = force_const_mem (Pmode, addr);
          emit_move_insn (temp, addr);

          new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, temp);
          new = gen_const_mem (Pmode, new);
          emit_move_insn (reg, new);
          new = reg;
        }
    }
  else
    {
      if (GET_CODE (addr) == CONST)
 {
   addr = XEXP (addr, 0);
   if (GET_CODE (addr) == UNSPEC)
     {
       gcc_assert (XVECLEN (addr, 0) == 1);
              switch (XINT (addr, 1))
                {


                  case 130:
                  case 128:
                    new = force_const_mem (Pmode, orig);
                    break;


    case 132:
      if (flag_pic == 2)
        new = force_const_mem (Pmode, orig);
      break;


                  case 131:
                    break;



                  case 129:
                    if (!TARGET_CPU_ZARCH)
                      {
                        rtx temp = reg? reg : gen_reg_rtx (Pmode);

   if (reload_in_progress || reload_completed)
     regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

                        addr = XVECEXP (addr, 0, 0);
                        addr = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr),
            128);
                        addr = gen_rtx_CONST (Pmode, addr);
                        addr = force_const_mem (Pmode, addr);
                 emit_move_insn (temp, addr);

                        new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, temp);
                        if (reg != 0)
                          {
                            s390_load_address (reg, new);
                            new = reg;
                          }
                      }
                    break;


                  default:
                    gcc_unreachable ();
                }
     }
   else
     gcc_assert (GET_CODE (addr) == PLUS);
 }
      if (GET_CODE (addr) == PLUS)
 {
   rtx op0 = XEXP (addr, 0), op1 = XEXP (addr, 1);

   gcc_assert (!TLS_SYMBOLIC_CONST (op0));
   gcc_assert (!TLS_SYMBOLIC_CONST (op1));



   if ((GET_CODE (op0) == LABEL_REF
  || (GET_CODE (op0) == SYMBOL_REF && SYMBOL_REF_LOCAL_P (op0)))
       && GET_CODE (op1) == CONST_INT)
     {
              if (TARGET_CPU_ZARCH
    && larl_operand (op0, VOIDmode)
    && INTVAL (op1) < (HOST_WIDE_INT)1 << 31
    && INTVAL (op1) >= -((HOST_WIDE_INT)1 << 31))
                {
                  if (INTVAL (op1) & 1)
                    {


                      rtx temp = reg? reg : gen_reg_rtx (Pmode);

                      if (!DISP_IN_RANGE (INTVAL (op1)))
                        {
                          HOST_WIDE_INT even = INTVAL (op1) - 1;
                          op0 = gen_rtx_PLUS (Pmode, op0, GEN_INT (even));
     op0 = gen_rtx_CONST (Pmode, op0);
                          op1 = const1_rtx;
                        }

                      emit_move_insn (temp, op0);
                      new = gen_rtx_PLUS (Pmode, temp, op1);

                      if (reg != 0)
                        {
                          s390_load_address (reg, new);
                          new = reg;
                        }
                    }
                  else
                    {


                    }
                }
              else
                {


                  rtx temp = reg? reg : gen_reg_rtx (Pmode);

    if (reload_in_progress || reload_completed)
      regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

                  addr = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, op0),
      130);
                  addr = gen_rtx_PLUS (Pmode, addr, op1);
                  addr = gen_rtx_CONST (Pmode, addr);
                  addr = force_const_mem (Pmode, addr);
    emit_move_insn (temp, addr);

                  new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, temp);
                  if (reg != 0)
                    {
                      s390_load_address (reg, new);
                      new = reg;
                    }
                }
     }




   else if (GET_CODE (op0) == UNSPEC
            && GET_CODE (op1) == CONST_INT
            && XINT (op0, 1) == 130)
            {
       gcc_assert (XVECLEN (op0, 0) == 1);

              new = force_const_mem (Pmode, orig);
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

       if (GET_CODE (new) == CONST)
  new = XEXP (new, 0);
              new = force_operand (new, 0);
     }
 }
    }
  return new;
}
