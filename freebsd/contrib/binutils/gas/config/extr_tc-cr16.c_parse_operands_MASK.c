#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nargs; } ;
typedef  TYPE_1__ ins ;

/* Variables and functions */
 int MAX_OPERANDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cur_arg_num ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ins_parse ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (ins * cr16_ins, char *operands)
{
  char *operandS;            /* Operands string.  */
  char *operandH, *operandT; /* Single operand head/tail pointers.  */
  int allocated = 0;         /* Indicates a new operands string was allocated.*/
  char *operand[MAX_OPERANDS];/* Separating the operands.  */
  int op_num = 0;             /* Current operand number we are parsing.  */
  int bracket_flag = 0;       /* Indicates a bracket '(' was found.  */
  int sq_bracket_flag = 0;    /* Indicates a square bracket '[' was found.  */

  /* Preprocess the list of registers, if necessary.  */
  operandS = operandH = operandT = operands;

  while (*operandT != '\0')
    {
      if (*operandT == ',' && bracket_flag != 1 && sq_bracket_flag != 1)
        {
          *operandT++ = '\0';
          operand[op_num++] = FUNC5 (operandH);
          operandH = operandT;
          continue;
        }

      if (*operandT == ' ')
        FUNC1 (FUNC0("Illegal operands (whitespace): `%s'"), ins_parse);

      if (*operandT == '(')
        bracket_flag = 1;
      else if (*operandT == '[')
        sq_bracket_flag = 1;

      if (*operandT == ')')
        {
          if (bracket_flag)
            bracket_flag = 0;
          else
            FUNC2 (FUNC0("Missing matching brackets : `%s'"), ins_parse);
        }
      else if (*operandT == ']')
        {
          if (sq_bracket_flag)
            sq_bracket_flag = 0;
          else
            FUNC2 (FUNC0("Missing matching brackets : `%s'"), ins_parse);
        }

      if (bracket_flag == 1 && *operandT == ')')
        bracket_flag = 0;
      else if (sq_bracket_flag == 1 && *operandT == ']')
        sq_bracket_flag = 0;

      operandT++;
    }

  /* Adding the last operand.  */
  operand[op_num++] = FUNC5 (operandH);
  cr16_ins->nargs = op_num;

  /* Verifying correct syntax of operands (all brackets should be closed).  */
  if (bracket_flag || sq_bracket_flag)
    FUNC2 (FUNC0("Missing matching brackets : `%s'"), ins_parse);

  /* Now we parse each operand separately.  */
  for (op_num = 0; op_num < cr16_ins->nargs; op_num++)
    {
      cur_arg_num = op_num;
      FUNC4 (operand[op_num], cr16_ins);
      FUNC3 (operand[op_num]);
    }

  if (allocated)
    FUNC3 (operandS);
}