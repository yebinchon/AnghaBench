
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* use_operand_p ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_9__ {TYPE_2__* imm_use; TYPE_1__ iter_node; } ;
typedef TYPE_3__ imm_use_iterator ;
struct TYPE_8__ {struct TYPE_8__* next; } ;


 scalar_t__ end_readonly_imm_use_p (TYPE_3__*) ;
 int gcc_assert (int) ;

__attribute__((used)) static inline use_operand_p
next_readonly_imm_use (imm_use_iterator *imm)
{
  use_operand_p old = imm->imm_use;
  imm->imm_use = old->next;
  if (end_readonly_imm_use_p (imm))
    return old;
  return imm->imm_use;
}
