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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; int /*<<< orphan*/  symbol; struct type* type; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  EVAL_AVOID_SIDE_EFFECTS ; 
 int /*<<< orphan*/  NULL_TYPE ; 
#define  OP_VAR_VALUE 130 
 struct type* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/  TYPE_CODE_ARRAY ; 
 int /*<<< orphan*/  TYPE_CODE_PTR ; 
 int /*<<< orphan*/  TYPE_CODE_REF ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
#define  UNOP_IND 129 
#define  UNOP_MEMVAL 128 
 struct type* FUNC4 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ ,struct expression*,int*,int /*<<< orphan*/ ) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC9 (struct expression *exp, int *pos)
{
  enum exp_opcode op;
  int pc;
  struct type *type;
  struct value *val;

  pc = (*pos);
  op = exp->elts[pc].opcode;

  switch (op)
    {
      /* This case is handled specially
         so that we avoid creating a value for the result type.
         If the result type is very big, it's desirable not to
         create a value unnecessarily.  */
    case UNOP_IND:
      (*pos)++;
      val = FUNC7 (NULL_TYPE, exp, pos, EVAL_AVOID_SIDE_EFFECTS);
      type = FUNC5 (FUNC4 (val));
      if (FUNC1 (type) != TYPE_CODE_PTR
	  && FUNC1 (type) != TYPE_CODE_REF
	  && FUNC1 (type) != TYPE_CODE_ARRAY)
	FUNC6 ("Attempt to take contents of a non-pointer value.");
      type = FUNC5 (FUNC3 (type));
      return FUNC8 (builtin_type_int, (LONGEST)
				 FUNC2 (type));

    case UNOP_MEMVAL:
      (*pos) += 3;
      type = FUNC5 (exp->elts[pc + 1].type);
      return FUNC8 (builtin_type_int,
				 (LONGEST) FUNC2 (type));

    case OP_VAR_VALUE:
      (*pos) += 4;
      type = FUNC5 (FUNC0 (exp->elts[pc + 2].symbol));
      return
	FUNC8 (builtin_type_int, (LONGEST) FUNC2 (type));

    default:
      val = FUNC7 (NULL_TYPE, exp, pos, EVAL_AVOID_SIDE_EFFECTS);
      return FUNC8 (builtin_type_int,
				 (LONGEST) FUNC2 (FUNC4 (val)));
    }
}