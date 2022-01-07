
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ddf ;
 int debug_rtx (int ) ;
 int df_insn_debug (int ,int ,int,int ) ;
 int stderr ;

void
debug_df_insn (rtx insn)
{
  df_insn_debug (ddf, insn, 1, stderr);
  debug_rtx (insn);
}
