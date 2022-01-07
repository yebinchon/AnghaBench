
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int shift; } ;



__attribute__((used)) static const char*
ins_cnt2b (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  --value;

  if (value > 2)
    return "count must be in range 1..3";

  *code |= value << self->field[0].shift;
  return 0;
}
