
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int emit_cmp_and_jump_insns (int ,int ,int,int ,int,int,int ) ;

void
emit_cmp_insn (rtx x, rtx y, enum rtx_code comparison, rtx size,
        enum machine_mode mode, int unsignedp)
{
  emit_cmp_and_jump_insns (x, y, comparison, size, mode, unsignedp, 0);
}
