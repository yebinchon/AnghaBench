
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct insn_data {scalar_t__ (* genfun ) (scalar_t__,scalar_t__,scalar_t__) ;TYPE_1__* operand; } ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ mode; } ;


 int CODE_FOR_movstr ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int HAVE_movstr ;
 int NULL_RTX ;
 int Pmode ;
 scalar_t__ VOIDmode ;
 int XEXP (scalar_t__,int ) ;
 scalar_t__ const0_rtx ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,int ) ;
 int force_operand (scalar_t__,int ) ;
 scalar_t__ force_reg (int ,int ) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_lowpart (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ get_memory_rtx (int ,int *) ;
 struct insn_data* insn_data ;
 scalar_t__ plus_constant (scalar_t__,int) ;
 scalar_t__ replace_equiv_address (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
expand_movstr (tree dest, tree src, rtx target, int endp)
{
  rtx end;
  rtx dest_mem;
  rtx src_mem;
  rtx insn;
  const struct insn_data * data;

  if (!HAVE_movstr)
    return 0;

  dest_mem = get_memory_rtx (dest, ((void*)0));
  src_mem = get_memory_rtx (src, ((void*)0));
  if (!endp)
    {
      target = force_reg (Pmode, XEXP (dest_mem, 0));
      dest_mem = replace_equiv_address (dest_mem, target);
      end = gen_reg_rtx (Pmode);
    }
  else
    {
      if (target == 0 || target == const0_rtx)
 {
   end = gen_reg_rtx (Pmode);
   if (target == 0)
     target = end;
 }
      else
 end = target;
    }

  data = insn_data + CODE_FOR_movstr;

  if (data->operand[0].mode != VOIDmode)
    end = gen_lowpart (data->operand[0].mode, end);

  insn = data->genfun (end, dest_mem, src_mem);

  gcc_assert (insn);

  emit_insn (insn);




  if (endp == 1 && target != const0_rtx)
    {
      rtx tem = plus_constant (gen_lowpart (GET_MODE (target), end), 1);
      emit_move_insn (target, force_operand (tem, NULL_RTX));
    }

  return target;
}
