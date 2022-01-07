
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {int dummy; } ;
typedef int FILE ;


 int DF_REF_BBNO (struct df_ref*) ;
 int DF_REF_CHAIN (struct df_ref*) ;
 int DF_REF_FLAGS (struct df_ref*) ;
 int DF_REF_ID (struct df_ref*) ;
 scalar_t__ DF_REF_INSN (struct df_ref*) ;
 int DF_REF_REGNO (struct df_ref*) ;
 scalar_t__ DF_REF_REG_DEF_P (struct df_ref*) ;
 int INSN_UID (scalar_t__) ;
 int df_chain_dump (int ,int *) ;
 int fprintf (int *,char*,...) ;

void
df_ref_debug (struct df_ref *ref, FILE *file)
{
  fprintf (file, "%c%d ",
    DF_REF_REG_DEF_P (ref) ? 'd' : 'u',
    DF_REF_ID (ref));
  fprintf (file, "reg %d bb %d insn %d flag %x chain ",
    DF_REF_REGNO (ref),
    DF_REF_BBNO (ref),
    DF_REF_INSN (ref) ? INSN_UID (DF_REF_INSN (ref)) : -1,
    DF_REF_FLAGS (ref));
  df_chain_dump (DF_REF_CHAIN (ref), file);
  fprintf (file, "\n");
}
