
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ stmt; int * use; int prev; } ;


 int link_imm_use (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
set_virtual_use_link (use_operand_p ptr, tree stmt)
{

  if (ptr->stmt != stmt)
    ptr->stmt = stmt;


  if (!ptr->prev)
    link_imm_use (ptr, *(ptr->use));
}
