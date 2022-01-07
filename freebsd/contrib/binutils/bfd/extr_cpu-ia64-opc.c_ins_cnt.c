
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int bits; int shift; } ;
typedef int BFD_HOST_U_64_BIT ;



__attribute__((used)) static const char*
ins_cnt (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  --value;
  if (value >= ((BFD_HOST_U_64_BIT) 1) << self->field[0].bits)
    return "count out of range";

  *code |= value << self->field[0].shift;
  return 0;
}
