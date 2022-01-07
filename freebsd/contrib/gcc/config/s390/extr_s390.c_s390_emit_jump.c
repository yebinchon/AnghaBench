
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int VOIDmode ;
 int emit_jump_insn (scalar_t__) ;
 scalar_t__ gen_rtx_IF_THEN_ELSE (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ gen_rtx_LABEL_REF (int ,scalar_t__) ;
 scalar_t__ gen_rtx_SET (int ,int ,scalar_t__) ;
 int pc_rtx ;

void
s390_emit_jump (rtx target, rtx cond)
{
  rtx insn;

  target = gen_rtx_LABEL_REF (VOIDmode, target);
  if (cond)
    target = gen_rtx_IF_THEN_ELSE (VOIDmode, cond, target, pc_rtx);

  insn = gen_rtx_SET (VOIDmode, pc_rtx, target);
  emit_jump_insn (insn);
}
