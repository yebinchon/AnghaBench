
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {int dummy; } ;
typedef int rtx ;
typedef int FILE ;


 int INSN_UID (int ) ;
 int df_insn_uid_debug (struct df*,int ,int,int *) ;

void
df_insn_debug (struct df *df, rtx insn, bool follow_chain, FILE *file)
{
  df_insn_uid_debug (df, INSN_UID (insn), follow_chain, file);
}
