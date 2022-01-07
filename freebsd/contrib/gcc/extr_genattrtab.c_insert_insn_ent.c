
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_ent {TYPE_1__* def; struct insn_ent* next; } ;
struct attr_value {int has_asm_insn; int num_insns; struct insn_ent* first_insn; } ;
struct TYPE_2__ {int insn_code; } ;


 int num_insn_ents ;

__attribute__((used)) static void
insert_insn_ent (struct attr_value *av, struct insn_ent *ie)
{
  ie->next = av->first_insn;
  av->first_insn = ie;
  av->num_insns++;
  if (ie->def->insn_code == -1)
    av->has_asm_insn = 1;

  num_insn_ents++;
}
