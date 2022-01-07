
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int shift; } ;
typedef int BFD_HOST_U_64_BIT ;
typedef scalar_t__ BFD_HOST_64_BIT ;



__attribute__((used)) static const char*
ins_inc3 (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  BFD_HOST_64_BIT val = value;
  BFD_HOST_U_64_BIT sign = 0;

  if (val < 0)
    {
      sign = 0x4;
      value = -value;
    }
  switch (value)
    {
    case 1: value = 3; break;
    case 4: value = 2; break;
    case 8: value = 1; break;
    case 16: value = 0; break;
    default: return "count must be +/- 1, 4, 8, or 16";
    }
  *code |= (sign | value) << self->field[0].shift;
  return 0;
}
