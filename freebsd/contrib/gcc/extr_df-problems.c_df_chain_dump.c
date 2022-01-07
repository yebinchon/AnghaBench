
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_link {int ref; struct df_link* next; } ;
typedef int FILE ;


 int DF_REF_BBNO (int ) ;
 int DF_REF_ID (int ) ;
 scalar_t__ DF_REF_INSN (int ) ;
 int DF_REF_INSN_UID (int ) ;
 scalar_t__ DF_REF_REG_DEF_P (int ) ;
 int fprintf (int *,char*,...) ;

void
df_chain_dump (struct df_link *link, FILE *file)
{
  fprintf (file, "{ ");
  for (; link; link = link->next)
    {
      fprintf (file, "%c%d(bb %d insn %d) ",
        DF_REF_REG_DEF_P (link->ref) ? 'd' : 'u',
        DF_REF_ID (link->ref),
        DF_REF_BBNO (link->ref),
        DF_REF_INSN (link->ref) ? DF_REF_INSN_UID (link->ref) : -1);
    }
  fprintf (file, "}");
}
