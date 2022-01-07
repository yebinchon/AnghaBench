
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int bits; } ;


 char* ext_immu (struct ia64_operand const*,int,int*) ;

__attribute__((used)) static const char*
ext_cimmu (const struct ia64_operand *self, ia64_insn code, ia64_insn *valuep)
{
  const char *result;
  ia64_insn mask;

  mask = (((ia64_insn) 1) << self->field[0].bits) - 1;
  result = ext_immu (self, code, valuep);
  if (!result)
    {
      mask = (((ia64_insn) 1) << self->field[0].bits) - 1;
      *valuep ^= mask;
    }
  return result;
}
