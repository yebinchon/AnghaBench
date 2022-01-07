
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCmode ;
 int CR0_REGNO ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_label (int ) ;
 int emit_load_locked (int,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int emit_store_conditional (int,int ,int ,int ) ;
 int emit_unlikely_jump (int ,int ) ;
 int gen_isync () ;
 int gen_label_rtx () ;
 int gen_memory_barrier () ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_NE (int ,int ,int ) ;
 int gen_rtx_REG (int ,int ) ;

void
rs6000_split_lock_test_and_set (rtx retval, rtx mem, rtx val, rtx scratch)
{
  enum machine_mode mode = GET_MODE (mem);
  rtx label, x, cond = gen_rtx_REG (CCmode, CR0_REGNO);

  emit_insn (gen_memory_barrier ());

  label = gen_rtx_LABEL_REF (VOIDmode, gen_label_rtx ());
  emit_label (XEXP (label, 0));

  emit_load_locked (mode, retval, mem);
  emit_move_insn (scratch, val);
  emit_store_conditional (mode, cond, mem, scratch);

  x = gen_rtx_NE (VOIDmode, cond, const0_rtx);
  emit_unlikely_jump (x, label);

  emit_insn (gen_isync ());
}
