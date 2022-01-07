
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* operand_entry_t ;
struct TYPE_2__ {scalar_t__ rank; int op; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int constant_type (int ) ;

__attribute__((used)) static int
sort_by_operand_rank (const void *pa, const void *pb)
{
  const operand_entry_t oea = *(const operand_entry_t *)pa;
  const operand_entry_t oeb = *(const operand_entry_t *)pb;




  if (oeb->rank == 0 && oea->rank == 0)
    return constant_type (oeb->op) - constant_type (oea->op);



  if ((oeb->rank - oea->rank == 0)
      && TREE_CODE (oea->op) == SSA_NAME
      && TREE_CODE (oeb->op) == SSA_NAME)
    return SSA_NAME_VERSION (oeb->op) - SSA_NAME_VERSION (oea->op);

  return oeb->rank - oea->rank;
}
