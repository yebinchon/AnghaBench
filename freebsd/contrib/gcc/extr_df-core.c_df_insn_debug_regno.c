
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {int dummy; } ;
typedef int rtx ;
typedef int FILE ;


 int DF_INSN_LUID (struct df*,int ) ;
 scalar_t__ DF_INSN_UID_DEFS (struct df*,unsigned int) ;
 scalar_t__ DF_INSN_UID_USES (struct df*,unsigned int) ;
 int DF_REF_BBNO (scalar_t__) ;
 unsigned int INSN_UID (int ) ;
 int df_regs_chain_dump (struct df*,scalar_t__,int *) ;
 int fprintf (int *,char*,...) ;

void
df_insn_debug_regno (struct df *df, rtx insn, FILE *file)
{
  unsigned int uid;
  int bbi;

  uid = INSN_UID (insn);
  if (DF_INSN_UID_DEFS (df, uid))
    bbi = DF_REF_BBNO (DF_INSN_UID_DEFS (df, uid));
  else if (DF_INSN_UID_USES(df, uid))
    bbi = DF_REF_BBNO (DF_INSN_UID_USES (df, uid));
  else
    bbi = -1;

  fprintf (file, "insn %d bb %d luid %d defs ",
    uid, bbi, DF_INSN_LUID (df, insn));
  df_regs_chain_dump (df, DF_INSN_UID_DEFS (df, uid), file);

  fprintf (file, " uses ");
  df_regs_chain_dump (df, DF_INSN_UID_USES (df, uid), file);
  fprintf (file, "\n");
}
