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
typedef  scalar_t__ rtx ;

/* Variables and functions */
#define  AND 134 
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (int) ; 
#define  IF_THEN_ELSE 133 
#define  IOR 132 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
#define  MATCH_CODE 131 
#define  MATCH_OPERAND 130 
#define  MATCH_TEST 129 
#define  NOT 128 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 char* FUNC5 (scalar_t__,int) ; 
 int have_error ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*,...) ; 

__attribute__((used)) static bool
FUNC7 (rtx exp, const char *name, int lineno)
{
  if (exp == 0)
    {
      FUNC6 (lineno, "%s: must give a predicate expression", name);
      return true;
    }

  switch (FUNC0 (exp))
    {
      /* Ternary, binary, unary expressions: recurse into subexpressions.  */
    case IF_THEN_ELSE:
      if (FUNC7 (FUNC4 (exp, 2), name, lineno))
	return true;
      /* else fall through */
    case AND:
    case IOR:
      if (FUNC7 (FUNC4 (exp, 1), name, lineno))
	return true;
      /* else fall through */
    case NOT:
      return FUNC7 (FUNC4 (exp, 0), name, lineno);

      /* MATCH_CODE might have a syntax error in its path expression.  */
    case MATCH_CODE:
      {
	const char *p;
	for (p = FUNC5 (exp, 1); *p; p++)
	  {
	    if (!FUNC2 (*p) && !FUNC3 (*p))
	      {
		FUNC6 (lineno, "%s: invalid character in path "
				   "string '%s'", name, FUNC5 (exp, 1));
		have_error = 1;
		return true;
	      }
	  }
      }
      /* fall through */

      /* These need no special checking.  */
    case MATCH_OPERAND:
    case MATCH_TEST:
      return false;

    default:
      FUNC6 (lineno,
			 "%s: cannot use '%s' in a predicate expression",
			 name, FUNC1 (FUNC0 (exp)));
      have_error = 1;
      return true;
    }
}