
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_2__* optab ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_10__ {TYPE_1__* handlers; } ;
struct TYPE_9__ {scalar_t__ insn_code; } ;


 int BITS_PER_WORD ;
 scalar_t__ CODE_FOR_nothing ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int OPTAB_DIRECT ;
 int OPTAB_WIDEN ;
 int SCALAR_FLOAT_MODE_P (int) ;
 int* add_cost ;
 scalar_t__ convert_modes (int,int,scalar_t__,int) ;
 int emit_insn (scalar_t__) ;
 int end_sequence () ;
 scalar_t__ expand_binop (int,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_mult_highpart_adjust (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ extract_high_half (int,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_int_mode (int ,int) ;
 scalar_t__ get_insns () ;
 int* mul_cost ;
 int* mul_highpart_cost ;
 int* mul_widen_cost ;
 int** shift_cost ;
 TYPE_2__* smul_highpart_optab ;
 TYPE_2__* smul_optab ;
 TYPE_2__* smul_widen_optab ;
 int start_sequence () ;
 TYPE_2__* umul_highpart_optab ;
 TYPE_2__* umul_widen_optab ;

__attribute__((used)) static rtx
expand_mult_highpart_optab (enum machine_mode mode, rtx op0, rtx op1,
       rtx target, int unsignedp, int max_cost)
{
  rtx narrow_op1 = gen_int_mode (INTVAL (op1), mode);
  enum machine_mode wider_mode;
  optab moptab;
  rtx tem;
  int size;

  gcc_assert (!SCALAR_FLOAT_MODE_P (mode));

  wider_mode = GET_MODE_WIDER_MODE (mode);
  size = GET_MODE_BITSIZE (mode);



  if (mul_highpart_cost[mode] < max_cost)
    {
      moptab = unsignedp ? umul_highpart_optab : smul_highpart_optab;
      tem = expand_binop (mode, moptab, op0, narrow_op1, target,
     unsignedp, OPTAB_DIRECT);
      if (tem)
 return tem;
    }



  if (size - 1 < BITS_PER_WORD
      && (mul_highpart_cost[mode] + 2 * shift_cost[mode][size-1]
   + 4 * add_cost[mode] < max_cost))
    {
      moptab = unsignedp ? smul_highpart_optab : umul_highpart_optab;
      tem = expand_binop (mode, moptab, op0, narrow_op1, target,
     unsignedp, OPTAB_DIRECT);
      if (tem)

 return expand_mult_highpart_adjust (mode, tem, op0, narrow_op1,
         tem, unsignedp);
    }


  moptab = unsignedp ? umul_widen_optab : smul_widen_optab;
  if (moptab->handlers[wider_mode].insn_code != CODE_FOR_nothing
      && mul_widen_cost[wider_mode] < max_cost)
    {
      tem = expand_binop (wider_mode, moptab, op0, narrow_op1, 0,
     unsignedp, OPTAB_WIDEN);
      if (tem)
 return extract_high_half (mode, tem);
    }


  if (smul_optab->handlers[wider_mode].insn_code != CODE_FOR_nothing
      && size - 1 < BITS_PER_WORD
      && mul_cost[wider_mode] + shift_cost[mode][size-1] < max_cost)
    {
      rtx insns, wop0, wop1;





      start_sequence ();
      wop0 = convert_modes (wider_mode, mode, op0, unsignedp);
      wop1 = convert_modes (wider_mode, mode, op1, unsignedp);
      tem = expand_binop (wider_mode, smul_optab, wop0, wop1, 0,
     unsignedp, OPTAB_WIDEN);
      insns = get_insns ();
      end_sequence ();

      if (tem)
 {
   emit_insn (insns);
   return extract_high_half (mode, tem);
 }
    }


  moptab = unsignedp ? smul_widen_optab : umul_widen_optab;
  if (moptab->handlers[wider_mode].insn_code != CODE_FOR_nothing
      && size - 1 < BITS_PER_WORD
      && (mul_widen_cost[wider_mode] + 2 * shift_cost[mode][size-1]
   + 4 * add_cost[mode] < max_cost))
    {
      tem = expand_binop (wider_mode, moptab, op0, narrow_op1,
     NULL_RTX, ! unsignedp, OPTAB_WIDEN);
      if (tem != 0)
 {
   tem = extract_high_half (mode, tem);

   return expand_mult_highpart_adjust (mode, tem, op0, narrow_op1,
           target, unsignedp);
 }
    }

  return 0;
}
