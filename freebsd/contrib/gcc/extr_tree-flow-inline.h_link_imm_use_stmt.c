
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_4__ {int * stmt; } ;
typedef TYPE_1__ ssa_use_operand_t ;


 int link_imm_use (TYPE_1__*,int *) ;

__attribute__((used)) static inline void
link_imm_use_stmt (ssa_use_operand_t *linknode, tree def, tree stmt)
{
  if (stmt)
    link_imm_use (linknode, def);
  else
    link_imm_use (linknode, ((void*)0));
  linknode->stmt = stmt;
}
