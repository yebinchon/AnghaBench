
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int emit_insn_before (int ,int ) ;

__attribute__((used)) static void
ia64_emit_insn_before (rtx insn, rtx before)
{
  emit_insn_before (insn, before);
}
