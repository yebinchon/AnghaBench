
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ainsn_t ;
struct TYPE_5__ {struct TYPE_5__* next_equiv_class_insn; } ;



__attribute__((used)) static ainsn_t
insert_ainsn_into_equiv_class (ainsn_t ainsn,
          ainsn_t cyclic_equiv_class_insn_list)
{
  if (cyclic_equiv_class_insn_list == ((void*)0))
    ainsn->next_equiv_class_insn = ainsn;
  else
    {
      ainsn->next_equiv_class_insn
        = cyclic_equiv_class_insn_list->next_equiv_class_insn;
      cyclic_equiv_class_insn_list->next_equiv_class_insn = ainsn;
    }
  return ainsn;
}
