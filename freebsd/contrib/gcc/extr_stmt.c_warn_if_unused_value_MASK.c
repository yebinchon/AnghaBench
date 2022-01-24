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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
#define  BIND_EXPR 146 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CALL_EXPR 145 
#define  COMPOUND_EXPR 144 
#define  COND_EXPR 143 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  EXIT_EXPR 142 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  INDIRECT_REF 141 
#define  INIT_EXPR 140 
#define  MODIFY_EXPR 139 
#define  POSTDECREMENT_EXPR 138 
#define  POSTINCREMENT_EXPR 137 
#define  PREDECREMENT_EXPR 136 
#define  PREINCREMENT_EXPR 135 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int REFERENCE_TYPE ; 
#define  SAVE_EXPR 134 
#define  TARGET_EXPR 133 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
#define  TRUTH_ANDIF_EXPR 132 
#define  TRUTH_ORIF_EXPR 131 
#define  TRY_CATCH_EXPR 130 
#define  VA_ARG_EXPR 129 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
#define  WITH_CLEANUP_EXPR 128 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int
FUNC17 (tree exp, location_t locus)
{
 restart:
  if (FUNC14 (exp) || FUNC9 (exp))
    return 0;

  /* Don't warn about void constructs.  This includes casting to void,
     void function calls, and statement expressions with a final cast
     to void.  */
  if (FUNC15 (FUNC13 (exp)))
    return 0;

  if (FUNC3 (exp))
    locus = FUNC4 (exp);

  switch (FUNC6 (exp))
    {
    case PREINCREMENT_EXPR:
    case POSTINCREMENT_EXPR:
    case PREDECREMENT_EXPR:
    case POSTDECREMENT_EXPR:
    case MODIFY_EXPR:
    case INIT_EXPR:
    case TARGET_EXPR:
    case CALL_EXPR:
    case TRY_CATCH_EXPR:
    case WITH_CLEANUP_EXPR:
    case EXIT_EXPR:
    case VA_ARG_EXPR:
      return 0;

    case BIND_EXPR:
      /* For a binding, warn if no side effect within it.  */
      exp = FUNC0 (exp);
      goto restart;

    case SAVE_EXPR:
      exp = FUNC10 (exp, 0);
      goto restart;

    case TRUTH_ORIF_EXPR:
    case TRUTH_ANDIF_EXPR:
      /* In && or ||, warn if 2nd operand has no side effect.  */
      exp = FUNC10 (exp, 1);
      goto restart;

    case COMPOUND_EXPR:
      if (FUNC17 (FUNC10 (exp, 0), locus))
	return 1;
      /* Let people do `(foo (), 0)' without a warning.  */
      if (FUNC8 (FUNC10 (exp, 1)))
	return 0;
      exp = FUNC10 (exp, 1);
      goto restart;

    case COND_EXPR:
      /* If this is an expression with side effects, don't warn; this
	 case commonly appears in macro expansions.  */
      if (FUNC11 (exp))
	return 0;
      goto warn;

    case INDIRECT_REF:
      /* Don't warn about automatic dereferencing of references, since
	 the user cannot control it.  */
      if (FUNC6 (FUNC13 (FUNC10 (exp, 0))) == REFERENCE_TYPE)
	{
	  exp = FUNC10 (exp, 0);
	  goto restart;
	}
      /* Fall through.  */

    default:
      /* Referencing a volatile value is a side effect, so don't warn.  */
      if ((FUNC1 (exp) || FUNC5 (exp))
	  && FUNC12 (exp))
	return 0;

      /* If this is an expression which has no operands, there is no value
	 to be unused.  There are no such language-independent codes,
	 but front ends may define such.  */
      if (FUNC2 (exp) && FUNC7 (FUNC6 (exp)) == 0)
	return 0;

    warn:
      FUNC16 (0, "%Hvalue computed is not used", &locus);
      return 1;
    }
}