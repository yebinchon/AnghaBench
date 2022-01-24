#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  double_type_node ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  skip_evaluation ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

tree
FUNC12 (tree arg)
{
  /* [expr.call]

     The lvalue-to-rvalue, array-to-pointer, and function-to-pointer
     standard conversions are performed.  */
  arg = FUNC7 (arg);
  /* [expr.call]

     If the argument has integral or enumeration type that is subject
     to the integral promotions (_conv.prom_), or a floating point
     type that is subject to the floating point promotion
     (_conv.fpprom_), the value of the argument is converted to the
     promoted type before the call.  */
  if (FUNC1 (FUNC2 (arg)) == REAL_TYPE
      && (FUNC3 (FUNC2 (arg))
	  < FUNC3 (double_type_node)))
    arg = FUNC6 (double_type_node, arg);
  else if (FUNC0 (FUNC2 (arg)))
    arg = FUNC8 (arg);

  arg = FUNC10 (arg);

  if (arg != error_mark_node
      && !FUNC9 (FUNC2 (arg)))
    {
      /* Undefined behavior [expr.call] 5.2.2/7.  We used to just warn
	 here and do a bitwise copy, but now cp_expr_size will abort if we
	 try to do that.
	 If the call appears in the context of a sizeof expression,
	 there is no need to emit a warning, since the expression won't be
	 evaluated. We keep the builtin_trap just as a safety check.  */
      if (!skip_evaluation)
	FUNC11 (0, "cannot pass objects of non-POD type %q#T through %<...%>; "
		 "call will abort at runtime", FUNC2 (arg));
      arg = FUNC5 ();
      arg = FUNC4 (COMPOUND_EXPR, integer_type_node, arg,
		    integer_zero_node);
    }

  return arg;
}