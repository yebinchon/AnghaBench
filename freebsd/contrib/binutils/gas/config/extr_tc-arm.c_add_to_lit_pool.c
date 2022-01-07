
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int next_free_entry; scalar_t__ symbol; TYPE_1__* literals; } ;
typedef TYPE_3__ literal_pool ;
struct TYPE_6__ {scalar_t__ X_op; int X_add_number; scalar_t__ X_unsigned; scalar_t__ X_add_symbol; scalar_t__ X_op_symbol; } ;
struct TYPE_7__ {TYPE_1__ exp; } ;
struct TYPE_9__ {TYPE_2__ reloc; int error; } ;


 int FAIL ;
 unsigned int MAX_LITERAL_POOL_SIZE ;
 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 int SUCCESS ;
 int _ (char*) ;
 TYPE_3__* find_or_make_literal_pool () ;
 TYPE_4__ inst ;

__attribute__((used)) static int
add_to_lit_pool (void)
{
  literal_pool * pool;
  unsigned int entry;

  pool = find_or_make_literal_pool ();


  for (entry = 0; entry < pool->next_free_entry; entry ++)
    {
      if ((pool->literals[entry].X_op == inst.reloc.exp.X_op)
   && (inst.reloc.exp.X_op == O_constant)
   && (pool->literals[entry].X_add_number
       == inst.reloc.exp.X_add_number)
   && (pool->literals[entry].X_unsigned
       == inst.reloc.exp.X_unsigned))
 break;

      if ((pool->literals[entry].X_op == inst.reloc.exp.X_op)
   && (inst.reloc.exp.X_op == O_symbol)
   && (pool->literals[entry].X_add_number
       == inst.reloc.exp.X_add_number)
   && (pool->literals[entry].X_add_symbol
       == inst.reloc.exp.X_add_symbol)
   && (pool->literals[entry].X_op_symbol
       == inst.reloc.exp.X_op_symbol))
 break;
    }


  if (entry == pool->next_free_entry)
    {
      if (entry >= MAX_LITERAL_POOL_SIZE)
 {
   inst.error = _("literal pool overflow");
   return FAIL;
 }

      pool->literals[entry] = inst.reloc.exp;
      pool->next_free_entry += 1;
    }

  inst.reloc.exp.X_op = O_symbol;
  inst.reloc.exp.X_add_number = ((int) entry) * 4;
  inst.reloc.exp.X_add_symbol = pool->symbol;

  return SUCCESS;
}
