
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef unsigned int ia64_insn ;
struct TYPE_2__ {int bits; unsigned int shift; } ;



__attribute__((used)) static const char*
ins_reg (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  if (value >= 1u << self->field[0].bits)
    return "register number out of range";

  *code |= value << self->field[0].shift;
  return 0;
}
