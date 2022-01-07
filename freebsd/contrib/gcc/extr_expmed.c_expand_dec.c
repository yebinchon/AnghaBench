
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int GET_MODE (scalar_t__) ;
 int OPTAB_LIB_WIDEN ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int sub_optab ;

void
expand_dec (rtx target, rtx dec)
{
  rtx value = expand_binop (GET_MODE (target), sub_optab,
       target, dec,
       target, 0, OPTAB_LIB_WIDEN);
  if (value != target)
    emit_move_insn (target, value);
}
