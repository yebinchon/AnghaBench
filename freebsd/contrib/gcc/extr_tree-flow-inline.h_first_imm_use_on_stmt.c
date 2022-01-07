
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
struct TYPE_6__ {TYPE_1__* imm_use; int next_imm_name; } ;
typedef TYPE_2__ imm_use_iterator ;
struct TYPE_5__ {int next; } ;



__attribute__((used)) static inline use_operand_p
first_imm_use_on_stmt (imm_use_iterator *imm)
{
  imm->next_imm_name = imm->imm_use->next;
  return imm->imm_use;
}
