
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int VOIDmode ;
 int emit_jump_insn (int ) ;
 int gen_rtx_IF_THEN_ELSE (int ,int ,int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int pc_rtx ;
 int rs6000_generate_compare (int) ;

void
rs6000_emit_cbranch (enum rtx_code code, rtx loc)
{
  rtx condition_rtx, loc_ref;

  condition_rtx = rs6000_generate_compare (code);
  loc_ref = gen_rtx_LABEL_REF (VOIDmode, loc);
  emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx,
          gen_rtx_IF_THEN_ELSE (VOIDmode, condition_rtx,
           loc_ref, pc_rtx)));
}
