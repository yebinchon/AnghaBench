
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_opcode {int ent_index; int * dependencies; int flags; int * operands; int mask; int opcode; int num_outputs; int type; int name; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int flags; int * operands; int mask; int num_outputs; int opcode_type; } ;


 TYPE_1__* main_table ;
 int * op_dependencies ;
 scalar_t__ xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct ia64_opcode *
make_ia64_opcode (ia64_insn opcode, const char *name, int place, int depind)
{
  struct ia64_opcode *res =
    (struct ia64_opcode *) xmalloc (sizeof (struct ia64_opcode));
  res->name = xstrdup (name);
  res->type = main_table[place].opcode_type;
  res->num_outputs = main_table[place].num_outputs;
  res->opcode = opcode;
  res->mask = main_table[place].mask;
  res->operands[0] = main_table[place].operands[0];
  res->operands[1] = main_table[place].operands[1];
  res->operands[2] = main_table[place].operands[2];
  res->operands[3] = main_table[place].operands[3];
  res->operands[4] = main_table[place].operands[4];
  res->flags = main_table[place].flags;
  res->ent_index = place;
  res->dependencies = &op_dependencies[depind];
  return res;
}
