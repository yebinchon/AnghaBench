
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {struct df_ref* next_ref; } ;
typedef int FILE ;


 int DF_REF_CHAIN (struct df_ref*) ;
 int DF_REF_ID (struct df_ref*) ;
 int DF_REF_REGNO (struct df_ref*) ;
 scalar_t__ DF_REF_REG_DEF_P (struct df_ref*) ;
 int df_chain_dump (int ,int *) ;
 int fprintf (int *,char*,...) ;

void
df_refs_chain_dump (struct df_ref *ref, bool follow_chain, FILE *file)
{
  fprintf (file, "{ ");
  while (ref)
    {
      fprintf (file, "%c%d(%d) ",
        DF_REF_REG_DEF_P (ref) ? 'd' : 'u',
        DF_REF_ID (ref),
        DF_REF_REGNO (ref));
      if (follow_chain)
 df_chain_dump (DF_REF_CHAIN (ref), file);
      ref = ref->next_ref;
    }
  fprintf (file, "}");
}
