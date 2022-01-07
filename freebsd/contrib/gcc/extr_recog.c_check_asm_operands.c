
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ISDIGIT (unsigned char) ;
 void* alloca (int) ;
 int asm_noperands (int ) ;
 int asm_operand_ok (int ,char const*) ;
 int constrain_operands (int) ;
 int decode_asm_operands (int ,int *,int *,char const**,int *) ;
 int extract_insn (int ) ;
 int make_insn_raw (int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ which_alternative ;

int
check_asm_operands (rtx x)
{
  int noperands;
  rtx *operands;
  const char **constraints;
  int i;


  if (reload_completed)
    {

      extract_insn (make_insn_raw (x));
      constrain_operands (1);
      return which_alternative >= 0;
    }

  noperands = asm_noperands (x);
  if (noperands < 0)
    return 0;
  if (noperands == 0)
    return 1;

  operands = alloca (noperands * sizeof (rtx));
  constraints = alloca (noperands * sizeof (char *));

  decode_asm_operands (x, operands, ((void*)0), constraints, ((void*)0));

  for (i = 0; i < noperands; i++)
    {
      const char *c = constraints[i];
      if (c[0] == '%')
 c++;
      if (ISDIGIT ((unsigned char) c[0]) && c[1] == '\0')
 c = constraints[c[0] - '0'];

      if (! asm_operand_ok (operands[i], c))
 return 0;
    }

  return 1;
}
