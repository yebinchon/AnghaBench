
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct invariant {int def; } ;
struct df_ref {struct df_ref* next_ref; } ;
typedef int rtx ;
struct TYPE_2__ {struct df_ref* uses; } ;


 TYPE_1__* DF_INSN_GET (int ,int ) ;
 int DF_REF_INSN (struct df_ref*) ;
 int DF_REF_LOC (struct df_ref*) ;
 int df ;
 struct invariant* invariant_for_use (struct df_ref*) ;
 int record_use (int ,int ,int ) ;

__attribute__((used)) static void
record_uses (rtx insn)
{
  struct df_ref *use;
  struct invariant *inv;

  for (use = DF_INSN_GET (df, insn)->uses; use; use = use->next_ref)
    {
      inv = invariant_for_use (use);
      if (inv)
 record_use (inv->def, DF_REF_LOC (use), DF_REF_INSN (use));
    }
}
