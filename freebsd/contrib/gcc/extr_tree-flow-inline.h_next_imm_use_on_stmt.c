
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
struct TYPE_8__ {TYPE_1__* imm_use; TYPE_1__* next_imm_name; } ;
typedef TYPE_2__ imm_use_iterator ;
struct TYPE_7__ {struct TYPE_7__* next; } ;


 TYPE_1__* NULL_USE_OPERAND_P ;
 scalar_t__ end_imm_use_on_stmt_p (TYPE_2__*) ;

__attribute__((used)) static inline use_operand_p
next_imm_use_on_stmt (imm_use_iterator *imm)
{
  imm->imm_use = imm->next_imm_name;
  if (end_imm_use_on_stmt_p (imm))
    return NULL_USE_OPERAND_P;
  else
    {
      imm->next_imm_name = imm->imm_use->next;
      return imm->imm_use;
    }
}
