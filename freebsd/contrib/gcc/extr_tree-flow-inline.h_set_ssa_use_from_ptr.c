
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
typedef int tree ;
struct TYPE_5__ {int * use; } ;


 int delink_imm_use (TYPE_1__*) ;
 int link_imm_use (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
set_ssa_use_from_ptr (use_operand_p use, tree val)
{
  delink_imm_use (use);
  *(use->use) = val;
  link_imm_use (use, val);
}
