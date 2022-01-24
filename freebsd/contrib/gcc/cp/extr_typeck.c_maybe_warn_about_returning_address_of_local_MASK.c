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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ AGGR_INIT_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC12 (tree retval)
{
  tree valtype = FUNC9 (FUNC3 (current_function_decl));
  tree whats_returned = retval;

  for (;;)
    {
      if (FUNC5 (whats_returned) == COMPOUND_EXPR)
	whats_returned = FUNC6 (whats_returned, 1);
      else if (FUNC5 (whats_returned) == CONVERT_EXPR
	       || FUNC5 (whats_returned) == NON_LVALUE_EXPR
	       || FUNC5 (whats_returned) == NOP_EXPR)
	whats_returned = FUNC6 (whats_returned, 0);
      else
	break;
    }

  if (FUNC5 (whats_returned) != ADDR_EXPR)
    return;
  whats_returned = FUNC6 (whats_returned, 0);

  if (FUNC5 (valtype) == REFERENCE_TYPE)
    {
      if (FUNC5 (whats_returned) == AGGR_INIT_EXPR
	  || FUNC5 (whats_returned) == TARGET_EXPR)
	{
	  FUNC11 (0, "returning reference to temporary");
	  return;
	}
      if (FUNC5 (whats_returned) == VAR_DECL
	  && FUNC1 (whats_returned)
	  && FUNC4 (FUNC1 (whats_returned)))
	{
	  FUNC11 (0, "reference to non-lvalue returned");
	  return;
	}
    }

  while (FUNC5 (whats_returned) == COMPONENT_REF
	 || FUNC5 (whats_returned) == ARRAY_REF)
    whats_returned = FUNC6 (whats_returned, 0);

  if (FUNC2 (whats_returned)
      && FUNC1 (whats_returned)
      && FUNC0 (whats_returned)
      && !(FUNC8 (whats_returned)
	   || FUNC7 (whats_returned)))
    {
      if (FUNC5 (valtype) == REFERENCE_TYPE)
	FUNC11 (0, "reference to local variable %q+D returned",
		 whats_returned);
      /* APPLE LOCAL begin blocks 6040305 (cn) */
      else if (FUNC5 (valtype) == BLOCK_POINTER_TYPE)
	FUNC10 ("returning block that lives on the local stack");
      /* APPLE LOCAL end blocks 6040305 (cn) */
      else
	FUNC11 (0, "address of local variable %q+D returned",
		 whats_returned);
      return;
    }
}