#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct reg_pref {int dummy; } ;
struct costs {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int n_operands; char** constraints; int* operand_mode; int /*<<< orphan*/ * operand; int /*<<< orphan*/  n_alternatives; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS ; 
 scalar_t__ FUNC0 (char const,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_RECOG_OPERANDS ; 
 int /*<<< orphan*/  MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRATCH ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int frequency ; 
 struct costs init_cost ; 
 TYPE_1__ recog_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,char const**,int /*<<< orphan*/ ,struct costs*,struct reg_pref*) ; 

__attribute__((used)) static void
FUNC8 (rtx insn, struct costs *op_costs,
		      struct reg_pref *reg_pref)
{
  const char *constraints[MAX_RECOG_OPERANDS];
  enum machine_mode modes[MAX_RECOG_OPERANDS];
  int i;

  for (i = 0; i < recog_data.n_operands; i++)
    {
      constraints[i] = recog_data.constraints[i];
      modes[i] = recog_data.operand_mode[i];
    }

  /* If we get here, we are set up to record the costs of all the
     operands for this insn.  Start by initializing the costs.
     Then handle any address registers.  Finally record the desired
     classes for any pseudos, doing it twice if some pair of
     operands are commutative.  */

  for (i = 0; i < recog_data.n_operands; i++)
    {
      op_costs[i] = init_cost;

      if (FUNC1 (recog_data.operand[i]) == SUBREG)
	recog_data.operand[i] = FUNC4 (recog_data.operand[i]);

      if (FUNC3 (recog_data.operand[i]))
	FUNC6 (FUNC2 (recog_data.operand[i]),
			     FUNC5 (recog_data.operand[i], 0),
			     0, MEM, SCRATCH, frequency * 2);
      else if (constraints[i][0] == 'p'
	       || FUNC0 (constraints[i][0], constraints[i]))
	FUNC6 (VOIDmode, recog_data.operand[i], 0, ADDRESS,
			     SCRATCH, frequency * 2);
    }

  /* Check for commutative in a separate loop so everything will
     have been initialized.  We must do this even if one operand
     is a constant--see addsi3 in m68k.md.  */

  for (i = 0; i < (int) recog_data.n_operands - 1; i++)
    if (constraints[i][0] == '%')
      {
	const char *xconstraints[MAX_RECOG_OPERANDS];
	int j;

	/* Handle commutative operands by swapping the constraints.
	   We assume the modes are the same.  */

	for (j = 0; j < recog_data.n_operands; j++)
	  xconstraints[j] = constraints[j];

	xconstraints[i] = constraints[i+1];
	xconstraints[i+1] = constraints[i];
	FUNC7 (recog_data.n_alternatives, recog_data.n_operands,
			    recog_data.operand, modes,
			    xconstraints, insn, op_costs, reg_pref);
      }

  FUNC7 (recog_data.n_alternatives, recog_data.n_operands,
		      recog_data.operand, modes,
		      constraints, insn, op_costs, reg_pref);
}