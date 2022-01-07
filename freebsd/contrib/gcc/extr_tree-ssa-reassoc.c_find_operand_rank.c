
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct operand_entry {int op; } ;
typedef int * operand_entry_t ;


 int NO_INSERT ;
 void** htab_find_slot (int ,struct operand_entry*,int ) ;
 int operand_rank ;

__attribute__((used)) static operand_entry_t
find_operand_rank (tree e)
{
  void **slot;
  struct operand_entry vrd;

  vrd.op = e;
  slot = htab_find_slot (operand_rank, &vrd, NO_INSERT);
  if (!slot)
    return ((void*)0);
  return ((operand_entry_t) *slot);
}
