
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alignment_context {int shift; int modemaski; int memsi; scalar_t__ aligned; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int AND ;
 int EQ ;
 int GET_MODE_BITSIZE (int) ;
 int IOR ;
 int LSHIFTRT ;
 scalar_t__ MEM_P (int ) ;
 int NE ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 int SImode ;
 int VOIDmode ;
 int convert_move (int ,int ,int) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_simple_binop (int ,int ,int ,int ,int ,int,int ) ;
 int force_reg (int ,int ) ;
 int gcc_assert (scalar_t__) ;
 int gen_label_rtx () ;
 int gen_reg_rtx (int ) ;
 int init_alignment_context (struct alignment_context*,int ,int) ;
 scalar_t__ register_operand (int ,int ) ;
 int s390_emit_compare (int ,int ,int ) ;
 int s390_emit_compare_and_swap (int ,int ,int ,int ,int ) ;
 int s390_emit_jump (int ,int ) ;
 int s390_expand_mask_and_shift (int ,int,int ) ;
 int store_bit_field (int ,int ,int ,int ,int ) ;

void
s390_expand_cs_hqi (enum machine_mode mode, rtx target, rtx mem, rtx cmp, rtx new)
{
  struct alignment_context ac;
  rtx cmpv, newv, val, resv, cc;
  rtx res = gen_reg_rtx (SImode);
  rtx csloop = gen_label_rtx ();
  rtx csend = gen_label_rtx ();

  gcc_assert (register_operand (target, VOIDmode));
  gcc_assert (MEM_P (mem));

  init_alignment_context (&ac, mem, mode);


  if (!(ac.aligned && MEM_P (cmp)))
    cmp = s390_expand_mask_and_shift (cmp, mode, ac.shift);
  if (!(ac.aligned && MEM_P (new)))
    new = s390_expand_mask_and_shift (new, mode, ac.shift);


  val = expand_simple_binop (SImode, AND, ac.memsi, ac.modemaski,
        NULL_RTX, 1, OPTAB_DIRECT);


  emit_label (csloop);






  if (ac.aligned && MEM_P (cmp))
    {
      cmpv = force_reg (SImode, val);
      store_bit_field (cmpv, GET_MODE_BITSIZE (mode), 0, SImode, cmp);
    }
  else
    cmpv = force_reg (SImode, expand_simple_binop (SImode, IOR, cmp, val,
         NULL_RTX, 1, OPTAB_DIRECT));
  if (ac.aligned && MEM_P (new))
    {
      newv = force_reg (SImode, val);
      store_bit_field (newv, GET_MODE_BITSIZE (mode), 0, SImode, new);
    }
  else
    newv = force_reg (SImode, expand_simple_binop (SImode, IOR, new, val,
         NULL_RTX, 1, OPTAB_DIRECT));


  s390_emit_jump (csend, s390_emit_compare_and_swap (EQ, res, ac.memsi,
           cmpv, newv));


  resv = expand_simple_binop (SImode, AND, res, ac.modemaski,
         NULL_RTX, 1, OPTAB_DIRECT);
  cc = s390_emit_compare (NE, resv, val);
  emit_move_insn (val, resv);

  s390_emit_jump (csloop, cc);

  emit_label (csend);


  convert_move (target, expand_simple_binop (SImode, LSHIFTRT, res, ac.shift,
          NULL_RTX, 1, OPTAB_DIRECT), 1);
}
