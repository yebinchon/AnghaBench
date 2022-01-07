
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int NULL_RTX ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int gen_sync_compare_and_swap_ccsi (int ,int ,int ,int ) ;
 int s390_compare_emitted ;

__attribute__((used)) static rtx
s390_emit_compare_and_swap (enum rtx_code code, rtx old, rtx mem, rtx cmp, rtx new)
{
  rtx ret;

  emit_insn (gen_sync_compare_and_swap_ccsi (old, mem, cmp, new));
  ret = gen_rtx_fmt_ee (code, VOIDmode, s390_compare_emitted, const0_rtx);

  s390_compare_emitted = NULL_RTX;

  return ret;
}
