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
struct symbol {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef  enum address_class { ____Placeholder_address_class } address_class ;
struct TYPE_2__ {int opcode; int /*<<< orphan*/  block; struct symbol* symbol; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EVAL_AVOID_SIDE_EFFECTS ; 
 int LOC_CONST ; 
 int LOC_CONST_BYTES ; 
 int LOC_REGISTER ; 
 int LOC_REGPARM ; 
 int /*<<< orphan*/  NULL_TYPE ; 
#define  OP_VAR_VALUE 130 
 int FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CODE_REF ; 
#define  UNOP_IND 129 
#define  UNOP_MEMVAL 128 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ ,struct expression*,int*,int) ; 
 struct value* FUNC8 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct type* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lval_memory ; 
 int /*<<< orphan*/  not_lval ; 
 struct value* FUNC10 (struct value*) ; 
 struct value* FUNC11 (struct type*,struct value*) ; 
 struct value* FUNC12 (struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC13 (struct expression *exp, int *pos,
			     enum noside noside)
{
  enum exp_opcode op;
  int pc;
  struct symbol *var;

  pc = (*pos);
  op = exp->elts[pc].opcode;

  switch (op)
    {
    case UNOP_IND:
      (*pos)++;
      return FUNC7 (NULL_TYPE, exp, pos, noside);

    case UNOP_MEMVAL:
      (*pos) += 3;
      return FUNC11 (FUNC9 (exp->elts[pc + 1].type),
			 FUNC7 (NULL_TYPE, exp, pos, noside));

    case OP_VAR_VALUE:
      var = exp->elts[pc + 2].symbol;

      /* C++: The "address" of a reference should yield the address
       * of the object pointed to. Let value_addr() deal with it. */
      if (FUNC2 (FUNC1 (var)) == TYPE_CODE_REF)
	goto default_case;

      (*pos) += 4;
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  struct type *type =
	  FUNC9 (FUNC1 (var));
	  enum address_class sym_class = FUNC0 (var);

	  if (sym_class == LOC_CONST
	      || sym_class == LOC_CONST_BYTES
	      || sym_class == LOC_REGISTER
	      || sym_class == LOC_REGPARM)
	    FUNC6 ("Attempt to take address of register or constant.");

	  return
	    FUNC12 (type, not_lval);
	}
      else
	return
	  FUNC8
	  (var,
	   FUNC5 (exp->elts[pc + 1].block));

    default:
    default_case:
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  struct value *x = FUNC7 (NULL_TYPE, exp, pos, noside);
	  if (FUNC3 (x) == lval_memory)
	    return FUNC12 (FUNC9 (FUNC4 (x)),
			       not_lval);
	  else
	    FUNC6 ("Attempt to take address of non-lval");
	}
      return FUNC10 (FUNC7 (NULL_TYPE, exp, pos, noside));
    }
}