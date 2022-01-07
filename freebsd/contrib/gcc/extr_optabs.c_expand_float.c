
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef TYPE_2__* convert_optab ;
struct TYPE_6__ {TYPE_1__** handlers; } ;
struct TYPE_5__ {scalar_t__ libfunc; } ;
typedef int REAL_VALUE_TYPE ;


 int CODE_FOR_nothing ;
 scalar_t__ CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 int DECIMAL_FLOAT_MODE_P (size_t) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int FLOAT ;
 int GE ;
 size_t GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_BITSIZE (size_t) ;
 scalar_t__ GET_MODE_SIZE (size_t) ;
 int GET_MODE_WIDER_MODE (int) ;
 int LCT_CONST ;
 int LT ;
 scalar_t__ NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 int RSHIFT_EXPR ;
 size_t SImode ;
 int UNSIGNED_FLOAT ;
 int VOIDmode ;
 int add_optab ;
 int and_optab ;
 int can_float_p (int,size_t,int) ;
 int const0_rtx ;
 scalar_t__ const1_rtx ;
 int convert_move (scalar_t__,scalar_t__,int ) ;
 scalar_t__ convert_to_mode (size_t,scalar_t__,int) ;
 int do_pending_stack_adjust () ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (scalar_t__,int ,int ,scalar_t__,size_t,int ,scalar_t__) ;
 int emit_jump_insn (int ) ;
 int emit_label (scalar_t__) ;
 int emit_libcall_block (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ emit_library_call_value (scalar_t__,scalar_t__,int ,size_t,int,scalar_t__,size_t) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int emit_unop_insn (int,scalar_t__,scalar_t__,int ) ;
 int end_sequence () ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_shift (int ,int,scalar_t__,int ,scalar_t__,int) ;
 int gcc_assert (scalar_t__) ;
 int gen_jump (scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtx_FLOAT (size_t,scalar_t__) ;
 scalar_t__ get_insns () ;
 int integer_one_node ;
 int ior_optab ;
 int real_2expN (int *,scalar_t__) ;
 TYPE_2__* sfloat_optab ;
 scalar_t__ significand_size (int) ;
 int start_sequence () ;
 TYPE_2__* ufloat_optab ;

void
expand_float (rtx to, rtx from, int unsignedp)
{
  enum insn_code icode;
  rtx target = to;
  enum machine_mode fmode, imode;
  bool can_do_signed = 0;


  gcc_assert (GET_MODE (from) != VOIDmode);






  for (fmode = GET_MODE (to); fmode != VOIDmode;
       fmode = GET_MODE_WIDER_MODE (fmode))
    for (imode = GET_MODE (from); imode != VOIDmode;
  imode = GET_MODE_WIDER_MODE (imode))
      {
 int doing_unsigned = unsignedp;

 if (fmode != GET_MODE (to)
     && significand_size (fmode) < GET_MODE_BITSIZE (GET_MODE (from)))
   continue;

 icode = can_float_p (fmode, imode, unsignedp);
 if (icode == CODE_FOR_nothing && unsignedp)
   {
     enum insn_code scode = can_float_p (fmode, imode, 0);
     if (scode != CODE_FOR_nothing)
       can_do_signed = 1;
     if (imode != GET_MODE (from))
       icode = scode, doing_unsigned = 0;
   }

 if (icode != CODE_FOR_nothing)
   {
     if (imode != GET_MODE (from))
       from = convert_to_mode (imode, from, unsignedp);

     if (fmode != GET_MODE (to))
       target = gen_reg_rtx (fmode);

     emit_unop_insn (icode, target, from,
       doing_unsigned ? UNSIGNED_FLOAT : FLOAT);

     if (target != to)
       convert_move (to, target, 0);
     return;
   }
      }




  if (unsignedp && can_do_signed && !DECIMAL_FLOAT_MODE_P (GET_MODE (to)))
    {
      rtx label = gen_label_rtx ();
      rtx temp;
      REAL_VALUE_TYPE offset;





      for (fmode = GET_MODE (to); fmode != VOIDmode;
    fmode = GET_MODE_WIDER_MODE (fmode))
 if (GET_MODE_BITSIZE (GET_MODE (from)) < GET_MODE_BITSIZE (fmode)
     && can_float_p (fmode, GET_MODE (from), 0) != CODE_FOR_nothing)
   break;

      if (fmode == VOIDmode)
 {

   fmode = GET_MODE (to);


   if ((significand_size (fmode) + 1)
       < GET_MODE_BITSIZE (GET_MODE (from)))
     {
       rtx temp1;
       rtx neglabel = gen_label_rtx ();



       if (!REG_P (target)
    || REGNO (target) < FIRST_PSEUDO_REGISTER
    || GET_MODE (target) != fmode)
  target = gen_reg_rtx (fmode);

       imode = GET_MODE (from);
       do_pending_stack_adjust ();


       emit_cmp_and_jump_insns (from, const0_rtx, LT, NULL_RTX, imode,
           0, neglabel);


       expand_float (target, from, 0);
       emit_jump_insn (gen_jump (label));
       emit_barrier ();






       emit_label (neglabel);
       temp = expand_binop (imode, and_optab, from, const1_rtx,
       NULL_RTX, 1, OPTAB_LIB_WIDEN);
       temp1 = expand_shift (RSHIFT_EXPR, imode, from, integer_one_node,
        NULL_RTX, 1);
       temp = expand_binop (imode, ior_optab, temp, temp1, temp, 1,
       OPTAB_LIB_WIDEN);
       expand_float (target, temp, 0);


       temp = expand_binop (fmode, add_optab, target, target,
       target, 0, OPTAB_LIB_WIDEN);
       if (temp != target)
  emit_move_insn (target, temp);

       do_pending_stack_adjust ();
       emit_label (label);
       goto done;
     }
 }




      if (GET_MODE (to) != fmode
   || !REG_P (to) || REGNO (to) < FIRST_PSEUDO_REGISTER)
 target = gen_reg_rtx (fmode);


      expand_float (target, from, 0);




      do_pending_stack_adjust ();
      emit_cmp_and_jump_insns (from, const0_rtx, GE, NULL_RTX, GET_MODE (from),
          0, label);


      real_2expN (&offset, GET_MODE_BITSIZE (GET_MODE (from)));
      temp = expand_binop (fmode, add_optab, target,
      CONST_DOUBLE_FROM_REAL_VALUE (offset, fmode),
      target, 0, OPTAB_LIB_WIDEN);
      if (temp != target)
 emit_move_insn (target, temp);

      do_pending_stack_adjust ();
      emit_label (label);
      goto done;
    }


    {
      rtx libfunc;
      rtx insns;
      rtx value;
      convert_optab tab = unsignedp ? ufloat_optab : sfloat_optab;

      if (GET_MODE_SIZE (GET_MODE (from)) < GET_MODE_SIZE (SImode))
 from = convert_to_mode (SImode, from, unsignedp);

      libfunc = tab->handlers[GET_MODE (to)][GET_MODE (from)].libfunc;
      gcc_assert (libfunc);

      start_sequence ();

      value = emit_library_call_value (libfunc, NULL_RTX, LCT_CONST,
           GET_MODE (to), 1, from,
           GET_MODE (from));
      insns = get_insns ();
      end_sequence ();

      emit_libcall_block (insns, target, value,
     gen_rtx_FLOAT (GET_MODE (to), from));
    }

 done:




  if (target != to)
    {
      if (GET_MODE (target) == GET_MODE (to))
 emit_move_insn (to, target);
      else
 convert_move (to, target, 0);
    }
}
