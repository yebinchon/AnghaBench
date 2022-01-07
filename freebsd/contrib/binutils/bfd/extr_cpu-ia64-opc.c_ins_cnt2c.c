
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int shift; } ;



__attribute__((used)) static const char*
ins_cnt2c (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  switch (value)
    {
    case 0: value = 0; break;
    case 7: value = 1; break;
    case 15: value = 2; break;
    case 16: value = 3; break;
    default: return "count must be 0, 7, 15, or 16";
    }
  *code |= value << self->field[0].shift;
  return 0;
}
