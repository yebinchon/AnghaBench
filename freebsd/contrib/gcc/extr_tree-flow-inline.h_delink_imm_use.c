
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ ssa_use_operand_t ;
struct TYPE_6__ {TYPE_1__* prev; } ;
struct TYPE_5__ {TYPE_2__* next; } ;



__attribute__((used)) static inline void
delink_imm_use (ssa_use_operand_t *linknode)
{

  if (linknode->prev == ((void*)0))
    return;

  linknode->prev->next = linknode->next;
  linknode->next->prev = linknode->prev;
  linknode->prev = ((void*)0);
  linknode->next = ((void*)0);
}
