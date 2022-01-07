
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int GET_MODE (scalar_t__) ;
 int OPTAB_LIB_WIDEN ;
 int add_optab ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;

void
expand_inc (rtx target, rtx inc)
{
  rtx value = expand_binop (GET_MODE (target), add_optab,
       target, inc,
       target, 0, OPTAB_LIB_WIDEN);
  if (value != target)
    emit_move_insn (target, value);
}
