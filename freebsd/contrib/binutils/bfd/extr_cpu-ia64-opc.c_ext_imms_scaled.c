
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {TYPE_1__* field; } ;
typedef int ia64_insn ;
struct TYPE_2__ {int bits; int shift; } ;
typedef int BFD_HOST_U_64_BIT ;
typedef int BFD_HOST_64_BIT ;


 int NELEMS (TYPE_1__*) ;

__attribute__((used)) static const char*
ext_imms_scaled (const struct ia64_operand *self, ia64_insn code,
   ia64_insn *valuep, int scale)
{
  int i, bits = 0, total = 0;
  BFD_HOST_64_BIT val = 0, sign;

  for (i = 0; i < NELEMS (self->field) && self->field[i].bits; ++i)
    {
      bits = self->field[i].bits;
      val |= ((code >> self->field[i].shift)
       & ((((BFD_HOST_U_64_BIT) 1) << bits) - 1)) << total;
      total += bits;
    }

  sign = (BFD_HOST_64_BIT) 1 << (total - 1);
  val = (val ^ sign) - sign;

  *valuep = (val << scale);
  return 0;
}
