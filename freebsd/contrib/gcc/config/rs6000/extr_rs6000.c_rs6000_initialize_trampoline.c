
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int DEFAULT_ABI ;
 int FALSE ;
 int GEN_INT (int ) ;
 int MEM_DEREF (int ) ;
 int MEM_PLUS (int ,int) ;
 int Pmode ;
 int SImode ;
 scalar_t__ TARGET_32BIT ;
 int VOIDmode ;
 int emit_library_call (int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (int ,int ) ;
 int gcc_unreachable () ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int rs6000_trampoline_size () ;

void
rs6000_initialize_trampoline (rtx addr, rtx fnaddr, rtx cxt)
{
  int regsize = (TARGET_32BIT) ? 4 : 8;
  rtx ctx_reg = force_reg (Pmode, cxt);

  switch (DEFAULT_ABI)
    {
    default:
      gcc_unreachable ();







    case 130:
      {
 rtx fn_reg = gen_reg_rtx (Pmode);
 rtx toc_reg = gen_reg_rtx (Pmode);
 emit_move_insn (fn_reg, gen_rtx_MEM (Pmode, memory_address (Pmode, fnaddr)));
 emit_move_insn (toc_reg, gen_rtx_MEM (Pmode, memory_address (Pmode, plus_constant (fnaddr, regsize))));
 emit_move_insn (gen_rtx_MEM (Pmode, memory_address (Pmode, addr)), fn_reg);
 emit_move_insn (gen_rtx_MEM (Pmode, memory_address (Pmode, plus_constant (addr, regsize))), toc_reg);
 emit_move_insn (gen_rtx_MEM (Pmode, memory_address (Pmode, plus_constant (addr, 2*regsize))), ctx_reg);
      }
      break;


    case 129:
    case 128:
      emit_library_call (gen_rtx_SYMBOL_REF (Pmode, "__trampoline_setup"),
    FALSE, VOIDmode, 4,
    addr, Pmode,
    GEN_INT (rs6000_trampoline_size ()), SImode,
    fnaddr, Pmode,
    ctx_reg, Pmode);
      break;
    }

  return;
}
