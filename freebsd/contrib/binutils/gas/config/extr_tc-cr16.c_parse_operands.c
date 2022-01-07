
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nargs; } ;
typedef TYPE_1__ ins ;


 int MAX_OPERANDS ;
 int _ (char*) ;
 int as_bad (int ,int ) ;
 int as_fatal (int ,int ) ;
 int cur_arg_num ;
 int free (char*) ;
 int ins_parse ;
 int parse_operand (char*,TYPE_1__*) ;
 char* strdup (char*) ;

__attribute__((used)) static void
parse_operands (ins * cr16_ins, char *operands)
{
  char *operandS;
  char *operandH, *operandT;
  int allocated = 0;
  char *operand[MAX_OPERANDS];
  int op_num = 0;
  int bracket_flag = 0;
  int sq_bracket_flag = 0;


  operandS = operandH = operandT = operands;

  while (*operandT != '\0')
    {
      if (*operandT == ',' && bracket_flag != 1 && sq_bracket_flag != 1)
        {
          *operandT++ = '\0';
          operand[op_num++] = strdup (operandH);
          operandH = operandT;
          continue;
        }

      if (*operandT == ' ')
        as_bad (_("Illegal operands (whitespace): `%s'"), ins_parse);

      if (*operandT == '(')
        bracket_flag = 1;
      else if (*operandT == '[')
        sq_bracket_flag = 1;

      if (*operandT == ')')
        {
          if (bracket_flag)
            bracket_flag = 0;
          else
            as_fatal (_("Missing matching brackets : `%s'"), ins_parse);
        }
      else if (*operandT == ']')
        {
          if (sq_bracket_flag)
            sq_bracket_flag = 0;
          else
            as_fatal (_("Missing matching brackets : `%s'"), ins_parse);
        }

      if (bracket_flag == 1 && *operandT == ')')
        bracket_flag = 0;
      else if (sq_bracket_flag == 1 && *operandT == ']')
        sq_bracket_flag = 0;

      operandT++;
    }


  operand[op_num++] = strdup (operandH);
  cr16_ins->nargs = op_num;


  if (bracket_flag || sq_bracket_flag)
    as_fatal (_("Missing matching brackets : `%s'"), ins_parse);


  for (op_num = 0; op_num < cr16_ins->nargs; op_num++)
    {
      cur_arg_num = op_num;
      parse_operand (operand[op_num], cr16_ins);
      free (operand[op_num]);
    }

  if (allocated)
    free (operandS);
}
