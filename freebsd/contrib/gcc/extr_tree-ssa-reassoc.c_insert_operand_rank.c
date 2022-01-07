
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* operand_entry_t ;
struct TYPE_4__ {unsigned int rank; int op; } ;


 int INSERT ;
 int gcc_assert (int ) ;
 void** htab_find_slot (int ,TYPE_1__*,int ) ;
 int operand_entry_pool ;
 int operand_rank ;
 TYPE_1__* pool_alloc (int ) ;

__attribute__((used)) static void
insert_operand_rank (tree e, unsigned int rank)
{
  void **slot;
  operand_entry_t new_pair = pool_alloc (operand_entry_pool);

  new_pair->op = e;
  new_pair->rank = rank;
  slot = htab_find_slot (operand_rank, new_pair, INSERT);
  gcc_assert (*slot == ((void*)0));
  *slot = new_pair;
}
