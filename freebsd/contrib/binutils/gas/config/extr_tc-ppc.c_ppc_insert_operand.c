
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_operand {long bitm; int flags; unsigned long (* insert ) (unsigned long,long,int ,char const**) ;long shift; } ;
typedef long offsetT ;


 int PPC_OPERAND_NEGATIVE ;
 int PPC_OPERAND_PLUS1 ;
 int PPC_OPERAND_SIGNED ;
 int PPC_OPERAND_SIGNOPT ;
 int _ (char*) ;
 int as_bad_value_out_of_range (int ,long,long,long,char*,unsigned int) ;
 int as_bad_where (char*,unsigned int,char*,char const*) ;
 int ppc_cpu ;
 unsigned long stub1 (unsigned long,long,int ,char const**) ;

__attribute__((used)) static unsigned long
ppc_insert_operand (unsigned long insn,
      const struct powerpc_operand *operand,
      offsetT val,
      char *file,
      unsigned int line)
{
  long min, max, right;

  max = operand->bitm;
  right = max & -max;
  min = 0;

  if ((operand->flags & PPC_OPERAND_SIGNED) != 0)
    {
      if ((operand->flags & PPC_OPERAND_SIGNOPT) == 0)
 max = (max >> 1) & -right;
      min = ~max & -right;
    }

  if ((operand->flags & PPC_OPERAND_PLUS1) != 0)
    max++;

  if ((operand->flags & PPC_OPERAND_NEGATIVE) != 0)
    {
      long tmp = min;
      min = -max;
      max = -tmp;
    }

  if (min <= max)
    {





      if (val > max
   && (offsetT) (val - 0x80000000 - 0x80000000) >= min
   && (offsetT) (val - 0x80000000 - 0x80000000) <= max
   && ((val - 0x80000000 - 0x80000000) & (right - 1)) == 0)
 val = val - 0x80000000 - 0x80000000;



      else if (val < min
        && (offsetT) (val + 0x80000000 + 0x80000000) >= min
        && (offsetT) (val + 0x80000000 + 0x80000000) <= max
        && ((val + 0x80000000 + 0x80000000) & (right - 1)) == 0)
 val = val + 0x80000000 + 0x80000000;

      else if (val < min
        || val > max
        || (val & (right - 1)) != 0)
 as_bad_value_out_of_range (_("operand"), val, min, max, file, line);
    }

  if (operand->insert)
    {
      const char *errmsg;

      errmsg = ((void*)0);
      insn = (*operand->insert) (insn, (long) val, ppc_cpu, &errmsg);
      if (errmsg != (const char *) ((void*)0))
 as_bad_where (file, line, "%s", errmsg);
    }
  else
    insn |= ((long) val & operand->bitm) << operand->shift;

  return insn;
}
