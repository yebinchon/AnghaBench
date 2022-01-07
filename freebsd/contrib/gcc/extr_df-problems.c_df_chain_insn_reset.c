
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {struct df_ref* next_ref; int * chain; } ;
struct df_insn_info {struct df_ref* uses; struct df_ref* defs; } ;
struct df {unsigned int insns_size; } ;
struct dataflow {int flags; struct df* df; } ;
typedef int rtx ;


 int DF_DU_CHAIN ;
 struct df_insn_info* DF_INSN_UID_GET (struct df*,unsigned int) ;
 int DF_UD_CHAIN ;
 unsigned int INSN_UID (int ) ;

__attribute__((used)) static void
df_chain_insn_reset (struct dataflow *dflow, rtx insn)
{
  struct df *df = dflow->df;
  unsigned int uid = INSN_UID (insn);
  struct df_insn_info *insn_info = ((void*)0);
  struct df_ref *ref;

  if (uid < df->insns_size)
    insn_info = DF_INSN_UID_GET (df, uid);

  if (insn_info)
    {
      if (dflow->flags & DF_DU_CHAIN)
 {
   ref = insn_info->defs;
   while (ref)
     {
       ref->chain = ((void*)0);
       ref = ref->next_ref;
     }
 }

      if (dflow->flags & DF_UD_CHAIN)
 {
   ref = insn_info->uses;
   while (ref)
     {
       ref->chain = ((void*)0);
       ref = ref->next_ref;
     }
 }
    }
}
