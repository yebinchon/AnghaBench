
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_operand {long (* extract ) (unsigned long,int,int*) ;unsigned long shift; unsigned long bitm; int flags; } ;


 int PPC_OPERAND_SIGNED ;
 long stub1 (unsigned long,int,int*) ;

__attribute__((used)) static long
operand_value_powerpc (const struct powerpc_operand *operand,
         unsigned long insn, int dialect)
{
  long value;
  int invalid;

  if (operand->extract)
    value = (*operand->extract) (insn, dialect, &invalid);
  else
    {
      value = (insn >> operand->shift) & operand->bitm;
      if ((operand->flags & PPC_OPERAND_SIGNED) != 0)
 {


   unsigned long top = operand->bitm;


   top |= (top & -top) - 1;
   top &= ~(top >> 1);
   value = (value ^ top) - top;
 }
    }

  return value;
}
