
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_7__ {scalar_t__ stmt; } ;
typedef TYPE_1__ ssa_use_operand_t ;


 int link_imm_use (TYPE_1__*,int *) ;
 int relink_imm_use (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static inline void
relink_imm_use_stmt (ssa_use_operand_t *linknode, ssa_use_operand_t *old, tree stmt)
{
  if (stmt)
    relink_imm_use (linknode, old);
  else
    link_imm_use (linknode, ((void*)0));
  linknode->stmt = stmt;
}
