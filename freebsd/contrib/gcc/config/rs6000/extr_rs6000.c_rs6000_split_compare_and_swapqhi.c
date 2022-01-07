
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CCmode ;
 int CR0_REGNO ;
 int SImode ;
 int UNSPEC_AND ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_label (int ) ;
 int emit_load_locked (int ,int ,int ) ;
 int emit_store_conditional (int ,int ,int ,int ) ;
 int emit_unlikely_jump (int ,int ) ;
 int gen_iorsi3 (int ,int ,int ) ;
 int gen_isync () ;
 int gen_label_rtx () ;
 int gen_memory_barrier () ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_AND (int ,int ,int ) ;
 int gen_rtx_COMPARE (int ,int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_NE (int ,int ,int ) ;
 int gen_rtx_NOT (int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int ) ;

void
rs6000_split_compare_and_swapqhi (rtx dest, rtx mask,
      rtx oldval, rtx newval, rtx mem,
      rtx scratch)
{
  rtx label1, label2, x, cond = gen_rtx_REG (CCmode, CR0_REGNO);

  emit_insn (gen_memory_barrier ());
  label1 = gen_rtx_LABEL_REF (VOIDmode, gen_label_rtx ());
  label2 = gen_rtx_LABEL_REF (VOIDmode, gen_label_rtx ());
  emit_label (XEXP (label1, 0));

  emit_load_locked (SImode, scratch, mem);



  emit_insn (gen_rtx_SET (SImode, dest,
     gen_rtx_UNSPEC (SImode,
       gen_rtvec (2, scratch, mask),
       UNSPEC_AND)));

  x = gen_rtx_COMPARE (CCmode, dest, oldval);
  emit_insn (gen_rtx_SET (VOIDmode, cond, x));

  x = gen_rtx_NE (VOIDmode, cond, const0_rtx);
  emit_unlikely_jump (x, label2);


  emit_insn (gen_rtx_SET (SImode, scratch,
     gen_rtx_AND (SImode,
           gen_rtx_NOT (SImode, mask), scratch)));
  emit_insn (gen_iorsi3 (scratch, scratch, newval));
  emit_store_conditional (SImode, cond, mem, scratch);

  x = gen_rtx_NE (VOIDmode, cond, const0_rtx);
  emit_unlikely_jump (x, label1);

  emit_insn (gen_isync ());
  emit_label (XEXP (label2, 0));
}
