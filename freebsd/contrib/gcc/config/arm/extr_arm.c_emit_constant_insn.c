
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int VOIDmode ;
 int copy_rtx (scalar_t__) ;
 int emit_insn (scalar_t__) ;
 scalar_t__ gen_rtx_COND_EXEC (int ,int ,scalar_t__) ;

__attribute__((used)) static void
emit_constant_insn (rtx cond, rtx pattern)
{
  if (cond)
    pattern = gen_rtx_COND_EXEC (VOIDmode, copy_rtx (cond), pattern);
  emit_insn (pattern);
}
