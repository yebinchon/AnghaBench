
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alignment_context {scalar_t__ shift; int memsi; scalar_t__ modemask; scalar_t__ modemaski; scalar_t__ aligned; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 int GET_MODE_BITSIZE (int) ;

 int const LSHIFTRT ;
 int MEM_P (scalar_t__) ;


 int NE ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;


 int SImode ;
 int VOIDmode ;

 int convert_move (scalar_t__,scalar_t__,int) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_simple_binop (int ,int const,scalar_t__,scalar_t__,int ,int,int ) ;
 scalar_t__ force_reg (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int ) ;
 int init_alignment_context (struct alignment_context*,scalar_t__,int) ;
 scalar_t__ register_operand (scalar_t__,int ) ;
 int s390_emit_compare_and_swap (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int s390_emit_jump (scalar_t__,int ) ;
 scalar_t__ s390_expand_mask_and_shift (scalar_t__,int,scalar_t__) ;
 int store_bit_field (scalar_t__,int ,int ,int ,scalar_t__) ;

void
s390_expand_atomic (enum machine_mode mode, enum rtx_code code,
      rtx target, rtx mem, rtx val, bool after)
{
  struct alignment_context ac;
  rtx cmp;
  rtx new = gen_reg_rtx (SImode);
  rtx orig = gen_reg_rtx (SImode);
  rtx csloop = gen_label_rtx ();

  gcc_assert (!target || register_operand (target, VOIDmode));
  gcc_assert (MEM_P (mem));

  init_alignment_context (&ac, mem, mode);



  if (!(ac.aligned && code == 129 && MEM_P (val)))
    val = s390_expand_mask_and_shift (val, mode, ac.shift);


  if (code == 130 || code == 132)
    emit_move_insn (orig, val);
  else if (code == 131 || code == 134)
    val = expand_simple_binop (SImode, 128, val, ac.modemaski,
          NULL_RTX, 1, OPTAB_DIRECT);


  cmp = force_reg (SImode, ac.memsi);


  emit_label (csloop);
  emit_move_insn (new, cmp);


  switch (code)
    {
    case 130:
    case 132:
      val = expand_simple_binop (SImode, code, new, orig,
     NULL_RTX, 1, OPTAB_DIRECT);
      val = expand_simple_binop (SImode, 134, val, ac.modemask,
     NULL_RTX, 1, OPTAB_DIRECT);

    case 129:
      if (ac.aligned && MEM_P (val))
 store_bit_field (new, GET_MODE_BITSIZE (mode), 0, SImode, val);
      else
 {
   new = expand_simple_binop (SImode, 134, new, ac.modemaski,
         NULL_RTX, 1, OPTAB_DIRECT);
   new = expand_simple_binop (SImode, 133, new, val,
         NULL_RTX, 1, OPTAB_DIRECT);
 }
      break;
    case 134:
    case 133:
    case 128:
      new = expand_simple_binop (SImode, code, new, val,
     NULL_RTX, 1, OPTAB_DIRECT);
      break;
    case 131:
      new = expand_simple_binop (SImode, 128, new, ac.modemask,
     NULL_RTX, 1, OPTAB_DIRECT);
      new = expand_simple_binop (SImode, 134, new, val,
     NULL_RTX, 1, OPTAB_DIRECT);
      break;
    default:
      gcc_unreachable ();
    }

  s390_emit_jump (csloop, s390_emit_compare_and_swap (NE, cmp,
            ac.memsi, cmp, new));


  if (target)
    convert_move (target, expand_simple_binop (SImode, LSHIFTRT,
            after ? new : cmp, ac.shift,
            NULL_RTX, 1, OPTAB_DIRECT), 1);
}
