
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;

__attribute__((used)) static void
mips_emit_binary (enum rtx_code code, rtx target, rtx op0, rtx op1)
{
  emit_insn (gen_rtx_SET (VOIDmode, target,
     gen_rtx_fmt_ee (code, GET_MODE (target), op0, op1)));
}
