#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;

/* Type definitions */
struct TYPE_39__ {int low; int unsignedp; int overflow; int /*<<< orphan*/  high; } ;
struct op {size_t op; TYPE_5__ value; } ;
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_36__ {int /*<<< orphan*/  skip_eval; } ;
struct TYPE_37__ {TYPE_1__ state; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_38__ {int prio; int flags; } ;

/* Variables and functions */
 int CHECK_PROMOTION ; 
#define  CPP_AND 153 
#define  CPP_AND_AND 152 
 int CPP_CLOSE_PAREN ; 
#define  CPP_COLON 151 
#define  CPP_COMMA 150 
#define  CPP_COMPL 149 
#define  CPP_DIV 148 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_ICE ; 
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
 size_t CPP_EQ ; 
#define  CPP_EQ_EQ 147 
#define  CPP_GREATER 146 
#define  CPP_GREATER_EQ 145 
 size_t CPP_LAST_CPP_OP ; 
#define  CPP_LESS 144 
#define  CPP_LESS_EQ 143 
#define  CPP_LSHIFT 142 
#define  CPP_MINUS 141 
#define  CPP_MOD 140 
#define  CPP_MULT 139 
#define  CPP_NOT 138 
#define  CPP_NOT_EQ 137 
#define  CPP_OPEN_PAREN 136 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  CPP_OR 135 
#define  CPP_OR_OR 134 
#define  CPP_PLUS 133 
#define  CPP_QUERY 132 
#define  CPP_RSHIFT 131 
#define  CPP_UMINUS 130 
#define  CPP_UPLUS 129 
#define  CPP_XOR 128 
 int LEFT_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct op*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__ FUNC3 (TYPE_2__*,TYPE_5__,TYPE_5__,int) ; 
 TYPE_5__ FUNC4 (TYPE_2__*,TYPE_5__,TYPE_5__,int) ; 
 TYPE_5__ FUNC5 (TYPE_2__*,TYPE_5__,TYPE_5__,int) ; 
 TYPE_5__ FUNC6 (TYPE_2__*,TYPE_5__,TYPE_5__,int) ; 
 TYPE_5__ FUNC7 (TYPE_2__*,TYPE_5__,TYPE_5__,int) ; 
 TYPE_5__ FUNC8 (TYPE_2__*,TYPE_5__,TYPE_5__) ; 
 TYPE_5__ FUNC9 (TYPE_2__*,TYPE_5__,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__) ; 
 TYPE_4__* optab ; 
 int /*<<< orphan*/  warn_num_sign_change ; 

__attribute__((used)) static struct op *
FUNC11 (cpp_reader *pfile, struct op *top, enum cpp_ttype op)
{
  unsigned int prio;

  if (top->op <= CPP_EQ || top->op > CPP_LAST_CPP_OP + 2)
    {
    bad_op:
      FUNC2 (pfile, CPP_DL_ICE, "impossible operator '%u'", top->op);
      return 0;
    }

  if (op == CPP_OPEN_PAREN)
    return top;

  /* Decrement the priority of left-associative operators to force a
     reduction with operators of otherwise equal priority.  */
  prio = optab[op].prio - ((optab[op].flags & LEFT_ASSOC) != 0);
  while (prio < optab[top->op].prio)
    {
      if (FUNC0 (pfile, warn_num_sign_change)
	  && optab[top->op].flags & CHECK_PROMOTION)
	FUNC1 (pfile, top);

      switch (top->op)
	{
	case CPP_UPLUS:
	case CPP_UMINUS:
	case CPP_NOT:
	case CPP_COMPL:
	  top[-1].value = FUNC9 (pfile, top->value, top->op);
	  break;

	case CPP_PLUS:
	case CPP_MINUS:
	case CPP_RSHIFT:
	case CPP_LSHIFT:
	case CPP_COMMA:
	  top[-1].value = FUNC3 (pfile, top[-1].value,
					 top->value, top->op);
	  break;

	case CPP_GREATER:
	case CPP_LESS:
	case CPP_GREATER_EQ:
	case CPP_LESS_EQ:
	  top[-1].value
	    = FUNC7 (pfile, top[-1].value, top->value, top->op);
	  break;

	case CPP_EQ_EQ:
	case CPP_NOT_EQ:
	  top[-1].value
	    = FUNC6 (pfile, top[-1].value, top->value, top->op);
	  break;

	case CPP_AND:
	case CPP_OR:
	case CPP_XOR:
	  top[-1].value
	    = FUNC4 (pfile, top[-1].value, top->value, top->op);
	  break;

	case CPP_MULT:
	  top[-1].value = FUNC8 (pfile, top[-1].value, top->value);
	  break;

	case CPP_DIV:
	case CPP_MOD:
	  top[-1].value = FUNC5 (pfile, top[-1].value,
				      top->value, top->op);
	  break;

	case CPP_OR_OR:
	  top--;
	  if (!FUNC10 (top->value))
	    pfile->state.skip_eval--;
	  top->value.low = (!FUNC10 (top->value)
			    || !FUNC10 (top[1].value));
	  top->value.high = 0;
	  top->value.unsignedp = false;
	  top->value.overflow = false;
	  continue;

	case CPP_AND_AND:
	  top--;
	  if (FUNC10 (top->value))
	    pfile->state.skip_eval--;
	  top->value.low = (!FUNC10 (top->value)
			    && !FUNC10 (top[1].value));
	  top->value.high = 0;
	  top->value.unsignedp = false;
	  top->value.overflow = false;
	  continue;

	case CPP_OPEN_PAREN:
	  if (op != CPP_CLOSE_PAREN)
	    {
	      FUNC2 (pfile, CPP_DL_ERROR, "missing ')' in expression");
	      return 0;
	    }
	  top--;
	  top->value = top[1].value;
	  return top;

	case CPP_COLON:
	  top -= 2;
	  if (!FUNC10 (top->value))
	    {
	      pfile->state.skip_eval--;
	      top->value = top[1].value;
	    }
	  else
	    top->value = top[2].value;
	  top->value.unsignedp = (top[1].value.unsignedp
				  || top[2].value.unsignedp);
	  continue;

	case CPP_QUERY:
	  FUNC2 (pfile, CPP_DL_ERROR, "'?' without following ':'");
	  return 0;

	default:
	  goto bad_op;
	}

      top--;
      if (top->value.overflow && !pfile->state.skip_eval)
	FUNC2 (pfile, CPP_DL_PEDWARN,
		   "integer overflow in preprocessor expression");
    }

  if (op == CPP_CLOSE_PAREN)
    {
      FUNC2 (pfile, CPP_DL_ERROR, "missing '(' in expression");
      return 0;
    }

  return top;
}