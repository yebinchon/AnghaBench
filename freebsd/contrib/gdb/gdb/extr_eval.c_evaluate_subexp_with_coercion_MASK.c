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
struct symbol {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; int /*<<< orphan*/  block; struct symbol* symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAST_IS_CONVERSION ; 
 int /*<<< orphan*/  NULL_TYPE ; 
#define  OP_VAR_VALUE 128 
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CODE_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct value* FUNC5 (int /*<<< orphan*/ ,struct expression*,int*,int) ; 
 struct value* FUNC6 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,struct value*) ; 

struct value *
FUNC9 (struct expression *exp,
			       int *pos, enum noside noside)
{
  enum exp_opcode op;
  int pc;
  struct value *val;
  struct symbol *var;

  pc = (*pos);
  op = exp->elts[pc].opcode;

  switch (op)
    {
    case OP_VAR_VALUE:
      var = exp->elts[pc + 2].symbol;
      if (FUNC1 (FUNC4 (FUNC0 (var))) == TYPE_CODE_ARRAY
	  && CAST_IS_CONVERSION)
	{
	  (*pos) += 4;
	  val =
	    FUNC6
	    (var, FUNC3 (exp->elts[pc + 1].block));
	  return FUNC8 (FUNC7 (FUNC2 (FUNC4 (FUNC0 (var)))),
			     val);
	}
      /* FALLTHROUGH */

    default:
      return FUNC5 (NULL_TYPE, exp, pos, noside);
    }
}