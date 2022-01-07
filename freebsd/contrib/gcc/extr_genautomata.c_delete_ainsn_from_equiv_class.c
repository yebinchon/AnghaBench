
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ainsn_t ;
struct TYPE_3__ {struct TYPE_3__* next_equiv_class_insn; } ;



__attribute__((used)) static void
delete_ainsn_from_equiv_class (ainsn_t equiv_class_insn)
{
  ainsn_t curr_equiv_class_insn;
  ainsn_t prev_equiv_class_insn;

  prev_equiv_class_insn = equiv_class_insn;
  for (curr_equiv_class_insn = equiv_class_insn->next_equiv_class_insn;
       curr_equiv_class_insn != equiv_class_insn;
       curr_equiv_class_insn = curr_equiv_class_insn->next_equiv_class_insn)
    prev_equiv_class_insn = curr_equiv_class_insn;
  if (prev_equiv_class_insn != equiv_class_insn)
    prev_equiv_class_insn->next_equiv_class_insn
      = equiv_class_insn->next_equiv_class_insn;
}
