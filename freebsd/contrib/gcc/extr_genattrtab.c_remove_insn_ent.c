
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_ent {TYPE_1__* def; struct insn_ent* next; } ;
struct attr_value {scalar_t__ has_asm_insn; int num_insns; struct insn_ent* first_insn; } ;
struct TYPE_2__ {int insn_code; } ;


 int num_insn_ents ;

__attribute__((used)) static void
remove_insn_ent (struct attr_value *av, struct insn_ent *ie)
{
  struct insn_ent *previe;

  if (av->first_insn == ie)
    av->first_insn = ie->next;
  else
    {
      for (previe = av->first_insn; previe->next != ie; previe = previe->next)
 ;
      previe->next = ie->next;
    }

  av->num_insns--;
  if (ie->def->insn_code == -1)
    av->has_asm_insn = 0;

  num_insn_ents--;
}
