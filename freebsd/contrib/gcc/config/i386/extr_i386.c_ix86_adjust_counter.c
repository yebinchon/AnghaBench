
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ DImode ;
 int GEN_INT (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int emit_insn (int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_addsi3 (int ,int ,int ) ;

__attribute__((used)) static void
ix86_adjust_counter (rtx countreg, HOST_WIDE_INT value)
{
  if (GET_MODE (countreg) == DImode)
    emit_insn (gen_adddi3 (countreg, countreg, GEN_INT (-value)));
  else
    emit_insn (gen_addsi3 (countreg, countreg, GEN_INT (-value)));
}
