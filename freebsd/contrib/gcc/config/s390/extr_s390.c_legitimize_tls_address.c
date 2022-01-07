
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 size_t PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ SYMBOL_REF ;
 int TARGET_CPU_ZARCH ;




 scalar_t__ UNSPEC ;
 int UNSPEC_DTPOFF ;
 int UNSPEC_GOTNTPOFF ;

 int UNSPEC_NTPOFF ;
 int UNSPEC_TLSGD ;
 int UNSPEC_TLSLDM ;
 int UNSPEC_TLSLDM_NTPOFF ;
 int UNSPEC_TLS_LOAD ;
 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_libcall_block (int ,int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int flag_pic ;
 int force_const_mem (int ,int ) ;
 int force_operand (int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int gen_const_mem (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtvec (int,int ,...) ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int) ;
 int get_insns () ;
 int pic_offset_table_rtx ;
 int plus_constant (int ,int ) ;
 int* regs_ever_live ;
 int reload_completed ;
 int reload_in_progress ;
 int s390_emit_tls_call_insn (int ,int ) ;
 int s390_get_thread_pointer () ;
 int s390_load_address (int ,int ) ;
 int start_sequence () ;
 int tls_symbolic_operand (int ) ;

__attribute__((used)) static rtx
legitimize_tls_address (rtx addr, rtx reg)
{
  rtx new, tls_call, temp, base, r2, insn;

  if (GET_CODE (addr) == SYMBOL_REF)
    switch (tls_symbolic_operand (addr))
      {
      case 132:
 start_sequence ();
 r2 = gen_rtx_REG (Pmode, 2);
 tls_call = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_TLSGD);
 new = gen_rtx_CONST (Pmode, tls_call);
 new = force_const_mem (Pmode, new);
 emit_move_insn (r2, new);
 s390_emit_tls_call_insn (r2, tls_call);
 insn = get_insns ();
 end_sequence ();

 new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_NTPOFF);
 temp = gen_reg_rtx (Pmode);
 emit_libcall_block (insn, temp, r2, new);

 new = gen_rtx_PLUS (Pmode, s390_get_thread_pointer (), temp);
 if (reg != 0)
   {
     s390_load_address (reg, new);
     new = reg;
   }
 break;

      case 130:
 start_sequence ();
 r2 = gen_rtx_REG (Pmode, 2);
 tls_call = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, const0_rtx), UNSPEC_TLSLDM);
 new = gen_rtx_CONST (Pmode, tls_call);
 new = force_const_mem (Pmode, new);
 emit_move_insn (r2, new);
 s390_emit_tls_call_insn (r2, tls_call);
 insn = get_insns ();
 end_sequence ();

 new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, const0_rtx), UNSPEC_TLSLDM_NTPOFF);
 temp = gen_reg_rtx (Pmode);
 emit_libcall_block (insn, temp, r2, new);

 new = gen_rtx_PLUS (Pmode, s390_get_thread_pointer (), temp);
 base = gen_reg_rtx (Pmode);
 s390_load_address (base, new);

 new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_DTPOFF);
 new = gen_rtx_CONST (Pmode, new);
 new = force_const_mem (Pmode, new);
 temp = gen_reg_rtx (Pmode);
 emit_move_insn (temp, new);

 new = gen_rtx_PLUS (Pmode, base, temp);
 if (reg != 0)
   {
     s390_load_address (reg, new);
     new = reg;
   }
 break;

      case 131:
 if (flag_pic == 1)
   {



     if (reload_in_progress || reload_completed)
       regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOTNTPOFF);
     new = gen_rtx_CONST (Pmode, new);
     new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, new);
     new = gen_const_mem (Pmode, new);
     temp = gen_reg_rtx (Pmode);
     emit_move_insn (temp, new);
   }
 else if (TARGET_CPU_ZARCH)
   {



     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 128);
     new = gen_rtx_CONST (Pmode, new);
     temp = gen_reg_rtx (Pmode);
     emit_move_insn (temp, new);

     new = gen_const_mem (Pmode, temp);
     temp = gen_reg_rtx (Pmode);
     emit_move_insn (temp, new);
   }
 else if (flag_pic)
   {



     if (reload_in_progress || reload_completed)
       regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_GOTNTPOFF);
     new = gen_rtx_CONST (Pmode, new);
     new = force_const_mem (Pmode, new);
     temp = gen_reg_rtx (Pmode);
     emit_move_insn (temp, new);

            new = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, temp);
     new = gen_const_mem (Pmode, new);

     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (2, new, addr), UNSPEC_TLS_LOAD);
     temp = gen_reg_rtx (Pmode);
     emit_insn (gen_rtx_SET (Pmode, temp, new));
   }
 else
   {



     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), 128);
     new = gen_rtx_CONST (Pmode, new);
     new = force_const_mem (Pmode, new);
     temp = gen_reg_rtx (Pmode);
     emit_move_insn (temp, new);

     new = temp;
     new = gen_const_mem (Pmode, new);
     new = gen_rtx_UNSPEC (Pmode, gen_rtvec (2, new, addr), UNSPEC_TLS_LOAD);
     temp = gen_reg_rtx (Pmode);
     emit_insn (gen_rtx_SET (Pmode, temp, new));
   }

 new = gen_rtx_PLUS (Pmode, s390_get_thread_pointer (), temp);
 if (reg != 0)
   {
     s390_load_address (reg, new);
     new = reg;
   }
 break;

      case 129:
 new = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, addr), UNSPEC_NTPOFF);
 new = gen_rtx_CONST (Pmode, new);
 new = force_const_mem (Pmode, new);
        temp = gen_reg_rtx (Pmode);
 emit_move_insn (temp, new);

 new = gen_rtx_PLUS (Pmode, s390_get_thread_pointer (), temp);
 if (reg != 0)
   {
     s390_load_address (reg, new);
     new = reg;
   }
 break;

      default:
 gcc_unreachable ();
      }

  else if (GET_CODE (addr) == CONST && GET_CODE (XEXP (addr, 0)) == UNSPEC)
    {
      switch (XINT (XEXP (addr, 0), 1))
 {
 case 128:
   gcc_assert (TARGET_CPU_ZARCH);
   new = addr;
   break;

 default:
   gcc_unreachable ();
 }
    }

  else if (GET_CODE (addr) == CONST && GET_CODE (XEXP (addr, 0)) == PLUS
    && GET_CODE (XEXP (XEXP (addr, 0), 1)) == CONST_INT)
    {
      new = XEXP (XEXP (addr, 0), 0);
      if (GET_CODE (new) != SYMBOL_REF)
 new = gen_rtx_CONST (Pmode, new);

      new = legitimize_tls_address (new, reg);
      new = plus_constant (new, INTVAL (XEXP (XEXP (addr, 0), 1)));
      new = force_operand (new, 0);
    }

  else
    gcc_unreachable ();

  return new;
}
