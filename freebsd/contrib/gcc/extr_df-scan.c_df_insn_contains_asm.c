
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int df_insn_contains_asm_1 ;
 int for_each_rtx (int *,int ,int *) ;

__attribute__((used)) static int
df_insn_contains_asm (rtx insn)
{
  return for_each_rtx (&insn, df_insn_contains_asm_1, ((void*)0));
}
