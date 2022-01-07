
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_2__ expressionS ;
struct TYPE_7__ {TYPE_1__* operands; } ;
struct TYPE_5__ {int imm; int reg; int regisimm; } ;


 int FAIL ;
 int GE_OPT_PREFIX_BIG ;
 int LITTLENUM_NUMBER_OF_BITS ;
 scalar_t__ O_big ;
 scalar_t__ O_constant ;
 int SUCCESS ;
 int assert (int) ;
 int* generic_bignum ;
 TYPE_4__ inst ;
 int my_get_expression (TYPE_2__*,char**,int ) ;

__attribute__((used)) static int
parse_big_immediate (char **str, int i)
{
  expressionS exp;
  char *ptr = *str;

  my_get_expression (&exp, &ptr, GE_OPT_PREFIX_BIG);

  if (exp.X_op == O_constant)
    {
      inst.operands[i].imm = exp.X_add_number & 0xffffffff;



      if ((exp.X_add_number & ~0xffffffffl) != 0)
 {

   inst.operands[i].reg = ((exp.X_add_number >> 16) >> 16) & 0xffffffff;
   inst.operands[i].regisimm = 1;
 }
    }
  else if (exp.X_op == O_big
           && LITTLENUM_NUMBER_OF_BITS * exp.X_add_number > 32
           && LITTLENUM_NUMBER_OF_BITS * exp.X_add_number <= 64)
    {
      unsigned parts = 32 / LITTLENUM_NUMBER_OF_BITS, j, idx = 0;



      assert (parts != 0);
      inst.operands[i].imm = 0;
      for (j = 0; j < parts; j++, idx++)
        inst.operands[i].imm |= generic_bignum[idx]
                                << (LITTLENUM_NUMBER_OF_BITS * j);
      inst.operands[i].reg = 0;
      for (j = 0; j < parts; j++, idx++)
        inst.operands[i].reg |= generic_bignum[idx]
                                << (LITTLENUM_NUMBER_OF_BITS * j);
      inst.operands[i].regisimm = 1;
    }
  else
    return FAIL;

  *str = ptr;

  return SUCCESS;
}
