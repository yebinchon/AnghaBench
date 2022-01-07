
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int shift; } ;



__attribute__((used)) static const char*
ext_cnt2c (const struct ia64_operand *self, ia64_insn code, ia64_insn *valuep)
{
  ia64_insn value;

  value = (code >> self->field[0].shift) & 0x3;
  switch (value)
    {
    case 0: value = 0; break;
    case 1: value = 7; break;
    case 2: value = 15; break;
    case 3: value = 16; break;
    }
  *valuep = value;
  return 0;
}
