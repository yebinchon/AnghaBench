
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int shift; int bits; } ;
typedef int BFD_HOST_U_64_BIT ;



__attribute__((used)) static const char*
ext_cnt (const struct ia64_operand *self, ia64_insn code, ia64_insn *valuep)
{
  *valuep = ((code >> self->field[0].shift)
      & ((((BFD_HOST_U_64_BIT) 1) << self->field[0].bits) - 1)) + 1;
  return 0;
}
