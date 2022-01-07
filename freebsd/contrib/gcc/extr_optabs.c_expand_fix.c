
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef TYPE_3__* convert_optab ;
struct TYPE_10__ {TYPE_1__* handlers; } ;
struct TYPE_9__ {TYPE_2__** handlers; } ;
struct TYPE_8__ {scalar_t__ libfunc; } ;
struct TYPE_7__ {int insn_code; } ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;


 int CODE_FOR_nothing ;
 scalar_t__ CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 int FIX ;
 int GE ;
 size_t GET_MODE (scalar_t__) ;
 int GET_MODE_BITSIZE (size_t) ;
 scalar_t__ GET_MODE_SIZE (size_t) ;
 int GET_MODE_WIDER_MODE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int LCT_CONST ;
 scalar_t__ NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int REG_EQUAL ;
 size_t SImode ;
 int UNSIGNED_FIX ;
 int VOIDmode ;
 int can_fix_p (size_t,int,int,int*) ;
 int convert_move (scalar_t__,scalar_t__,int) ;
 scalar_t__ convert_to_mode (int,scalar_t__,int ) ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int do_pending_stack_adjust () ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (scalar_t__,scalar_t__,int ,scalar_t__,size_t,int ,scalar_t__) ;
 int emit_jump_insn (int ) ;
 int emit_label (scalar_t__) ;
 int emit_libcall_block (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ emit_library_call_value (scalar_t__,scalar_t__,int ,size_t,int,scalar_t__,size_t) ;
 scalar_t__ emit_move_insn (scalar_t__,scalar_t__) ;
 int emit_unop_insn (int,scalar_t__,scalar_t__,int ) ;
 int end_sequence () ;
 scalar_t__ expand_binop (size_t,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_unop (size_t,int ,scalar_t__,scalar_t__,int ) ;
 int ftrunc_optab ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_int_mode (int,size_t) ;
 int gen_jump (scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (size_t) ;
 int gen_rtx_fmt_e (int ,size_t,scalar_t__) ;
 scalar_t__ get_insns () ;
 TYPE_6__* mov_optab ;
 int real_2expN (int *,int) ;
 int set_unique_reg_note (scalar_t__,int ,int ) ;
 TYPE_3__* sfix_optab ;
 int start_sequence () ;
 int sub_optab ;
 TYPE_3__* ufix_optab ;
 int xor_optab ;

void
expand_fix (rtx to, rtx from, int unsignedp)
{
  enum insn_code icode;
  rtx target = to;
  enum machine_mode fmode, imode;
  int must_trunc = 0;






  for (fmode = GET_MODE (from); fmode != VOIDmode;
       fmode = GET_MODE_WIDER_MODE (fmode))
    for (imode = GET_MODE (to); imode != VOIDmode;
  imode = GET_MODE_WIDER_MODE (imode))
      {
 int doing_unsigned = unsignedp;

 icode = can_fix_p (imode, fmode, unsignedp, &must_trunc);
 if (icode == CODE_FOR_nothing && imode != GET_MODE (to) && unsignedp)
   icode = can_fix_p (imode, fmode, 0, &must_trunc), doing_unsigned = 0;

 if (icode != CODE_FOR_nothing)
   {
     if (fmode != GET_MODE (from))
       from = convert_to_mode (fmode, from, 0);

     if (must_trunc)
       {
  rtx temp = gen_reg_rtx (GET_MODE (from));
  from = expand_unop (GET_MODE (from), ftrunc_optab, from,
        temp, 0);
       }

     if (imode != GET_MODE (to))
       target = gen_reg_rtx (imode);

     emit_unop_insn (icode, target, from,
       doing_unsigned ? UNSIGNED_FIX : FIX);
     if (target != to)
       convert_move (to, target, unsignedp);
     return;
   }
      }
  if (unsignedp && GET_MODE_BITSIZE (GET_MODE (to)) <= HOST_BITS_PER_WIDE_INT)
    for (fmode = GET_MODE (from); fmode != VOIDmode;
  fmode = GET_MODE_WIDER_MODE (fmode))
      if (CODE_FOR_nothing != can_fix_p (GET_MODE (to), fmode, 0,
      &must_trunc))
 {
   int bitsize;
   REAL_VALUE_TYPE offset;
   rtx limit, lab1, lab2, insn;

   bitsize = GET_MODE_BITSIZE (GET_MODE (to));
   real_2expN (&offset, bitsize - 1);
   limit = CONST_DOUBLE_FROM_REAL_VALUE (offset, fmode);
   lab1 = gen_label_rtx ();
   lab2 = gen_label_rtx ();

   if (fmode != GET_MODE (from))
     from = convert_to_mode (fmode, from, 0);


   do_pending_stack_adjust ();
   emit_cmp_and_jump_insns (from, limit, GE, NULL_RTX, GET_MODE (from),
       0, lab1);


   expand_fix (to, from, 0);
   emit_jump_insn (gen_jump (lab2));
   emit_barrier ();




   emit_label (lab1);
   target = expand_binop (GET_MODE (from), sub_optab, from, limit,
     NULL_RTX, 0, OPTAB_LIB_WIDEN);
   expand_fix (to, target, 0);
   target = expand_binop (GET_MODE (to), xor_optab, to,
     gen_int_mode
     ((HOST_WIDE_INT) 1 << (bitsize - 1),
      GET_MODE (to)),
     to, 1, OPTAB_LIB_WIDEN);

   if (target != to)
     emit_move_insn (to, target);

   emit_label (lab2);

   if (mov_optab->handlers[(int) GET_MODE (to)].insn_code
       != CODE_FOR_nothing)
     {

       insn = emit_move_insn (to, to);
       set_unique_reg_note (insn,
                            REG_EQUAL,
       gen_rtx_fmt_e (UNSIGNED_FIX,
        GET_MODE (to),
        copy_rtx (from)));
     }

   return;
 }





  if (GET_MODE_SIZE (GET_MODE (to)) < GET_MODE_SIZE (SImode))
    {
      target = gen_reg_rtx (SImode);

      expand_fix (target, from, unsignedp);
    }
  else
    {
      rtx insns;
      rtx value;
      rtx libfunc;

      convert_optab tab = unsignedp ? ufix_optab : sfix_optab;
      libfunc = tab->handlers[GET_MODE (to)][GET_MODE (from)].libfunc;
      gcc_assert (libfunc);

      start_sequence ();

      value = emit_library_call_value (libfunc, NULL_RTX, LCT_CONST,
           GET_MODE (to), 1, from,
           GET_MODE (from));
      insns = get_insns ();
      end_sequence ();

      emit_libcall_block (insns, target, value,
     gen_rtx_fmt_e (unsignedp ? UNSIGNED_FIX : FIX,
      GET_MODE (to), from));
    }

  if (target != to)
    {
      if (GET_MODE (to) == GET_MODE (target))
        emit_move_insn (to, target);
      else
        convert_move (to, target, 0);
    }
}
