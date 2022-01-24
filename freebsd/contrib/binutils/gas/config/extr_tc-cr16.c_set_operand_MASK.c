#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* arg; } ;
typedef  TYPE_1__ ins ;
struct TYPE_6__ {int type; int r; int rp; int i_r; } ;
typedef  TYPE_2__ argument ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  arg_c 134 
#define  arg_cr 133 
#define  arg_crp 132 
#define  arg_ic 131 
#define  arg_icr 130 
#define  arg_idxr 129 
 int arg_idxrp ; 
#define  arg_rbase 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 size_t cur_arg_num ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  ins_parse ; 
 int nullregister ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static void
FUNC10 (char *operand, ins * cr16_ins)
{
  char *operandS; /* Pointer to start of sub-opearand.  */
  char *operandE; /* Pointer to end of sub-opearand.  */

  argument *cur_arg = &cr16_ins->arg[cur_arg_num]; /* Current argument.  */

  /* Initialize pointers.  */
  operandS = operandE = operand;

  switch (cur_arg->type)
    {
    case arg_ic:    /* Case $0x18.  */
      operandS++;
    case arg_c:     /* Case 0x18.  */
      /* Set constant.  */
      FUNC8 (operandS, cr16_ins);

      if (cur_arg->type != arg_ic)
        cur_arg->type = arg_c;
      break;

    case arg_icr:   /* Case $0x18(r1).  */
      operandS++;
    case arg_cr:    /* Case 0x18(r1).   */
      /* Set displacement constant.  */
      while (*operandE != '(')
        operandE++;
      *operandE = '\0';
      FUNC8 (operandS, cr16_ins);
      operandS = operandE;
    case arg_rbase: /* Case (r1) or (r1,r0).  */
      operandS++;
      /* Set register base.  */
      while (*operandE != ')')
        operandE++;
      *operandE = '\0';
      if ((cur_arg->r = FUNC5 (operandS)) == nullregister)
         FUNC2 (FUNC1("Illegal register `%s' in Instruction `%s'"),
              operandS, ins_parse);

      /* set the arg->rp, if reg is "r12" or "r13" or "14" or "15" */
      if ((cur_arg->type != arg_rbase)
	  && ((FUNC7 (cur_arg->r) == 12)
	      || (FUNC7 (cur_arg->r) == 13)
	      || (FUNC7 (cur_arg->r) == 14)
	      || (FUNC7 (cur_arg->r) == 15)))
         {
           cur_arg->type = arg_crp;
           cur_arg->rp = cur_arg->r;
         }
      break;

    case arg_crp:    /* Case 0x18(r1,r0).   */
      /* Set displacement constant.  */
      while (*operandE != '(')
        operandE++;
      *operandE = '\0';
      FUNC8 (operandS, cr16_ins);
      operandS = operandE;
      operandS++;
      /* Set register pair base.  */
      while (*operandE != ')')
        operandE++;
      *operandE = '\0';
      if ((cur_arg->rp = FUNC6 (operandS)) == nullregister)
         FUNC2 (FUNC1("Illegal register pair `%s' in Instruction `%s'"),
              operandS, ins_parse);
      break;

    case arg_idxr:
      /* Set register pair base.  */
      if ((FUNC9 (operandS,'(') != NULL))
        {
         while ((*operandE != '(') && (! FUNC0 (*operandE)))
           operandE++;
         if ((cur_arg->rp = FUNC4 (operandE)) == nullregister)
              FUNC2 (FUNC1("Illegal register pair `%s' in Instruction `%s'"),
                            operandS, ins_parse);
         *operandE++ = '\0';
         cur_arg->type = arg_idxrp;
        }
      else
	cur_arg->rp = -1;

       operandE = operandS;
      /* Set displacement constant.  */
      while (*operandE != ']')
        operandE++;
      FUNC8 (++operandE, cr16_ins);
      *operandE++ = '\0';
      operandE = operandS;

      /* Set index register .  */
      operandS = FUNC9 (operandE,'[');
      if (operandS != NULL)
        { /* Eliminate '[', detach from rest of operand.  */
          *operandS++ = '\0';

          operandE = FUNC9 (operandS, ']');

          if (operandE == NULL)
            FUNC2 (FUNC1("unmatched '['"));
          else
            { /* Eliminate ']' and make sure it was the last thing
                 in the string.  */
              *operandE = '\0';
              if (*(operandE + 1) != '\0')
                FUNC2 (FUNC1("garbage after index spec ignored"));
            }
        }

      if ((cur_arg->i_r = FUNC3 (operandS)) == nullregister)
        FUNC2 (FUNC1("Illegal register `%s' in Instruction `%s'"),
                operandS, ins_parse);
      *operandE = '\0';
      *operandS = '\0';
      break;

    default:
      break;
    }
}