
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpha_operand {int bits; int flags; unsigned int (* insert ) (unsigned int,int,char const**) ;int shift; } ;
typedef int offsetT ;


 int AXP_OPERAND_NOOVERFLOW ;
 int AXP_OPERAND_SIGNED ;
 int _ (char*) ;
 int as_warn (char const*) ;
 int as_warn_value_out_of_range (int ,int,int,int,char*,unsigned int) ;
 unsigned int stub1 (unsigned int,int,char const**) ;

__attribute__((used)) static unsigned
insert_operand (unsigned insn,
  const struct alpha_operand *operand,
  offsetT val,
  char *file,
  unsigned line)
{
  if (operand->bits != 32 && !(operand->flags & AXP_OPERAND_NOOVERFLOW))
    {
      offsetT min, max;

      if (operand->flags & AXP_OPERAND_SIGNED)
 {
   max = (1 << (operand->bits - 1)) - 1;
   min = -(1 << (operand->bits - 1));
 }
      else
 {
   max = (1 << operand->bits) - 1;
   min = 0;
 }

      if (val < min || val > max)
 as_warn_value_out_of_range (_("operand"), val, min, max, file, line);
    }

  if (operand->insert)
    {
      const char *errmsg = ((void*)0);

      insn = (*operand->insert) (insn, val, &errmsg);
      if (errmsg)
 as_warn (errmsg);
    }
  else
    insn |= ((val & ((1 << operand->bits) - 1)) << operand->shift);

  return insn;
}
