
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* use; TYPE_2__* prev; TYPE_1__* next; } ;
typedef TYPE_3__ ssa_use_operand_t ;
struct TYPE_7__ {TYPE_3__* next; } ;
struct TYPE_6__ {TYPE_3__* prev; } ;


 int gcc_assert (int) ;

__attribute__((used)) static inline void
relink_imm_use (ssa_use_operand_t *node, ssa_use_operand_t *old)
{

  gcc_assert (*(old->use) == *(node->use));
  node->prev = old->prev;
  node->next = old->next;
  if (old->prev)
    {
      old->prev->next = node;
      old->next->prev = node;

      old->prev = ((void*)0);
    }
}
