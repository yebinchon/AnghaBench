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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  AND 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 133 
#define  IOR 132 
 int /*<<< orphan*/  FUNC2 (char const) ; 
#define  MATCH_CODE 131 
#define  MATCH_OPERAND 130 
#define  MATCH_TEST 129 
#define  NOT 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char const*) ; 

__attribute__((used)) static bool
FUNC9 (rtx exp, const char *var)
{
  switch (FUNC0 (exp))
    {
      /* Ternary, binary, unary expressions need a variable if
	 any of their subexpressions do.  */
    case IF_THEN_ELSE:
      if (FUNC9 (FUNC3 (exp, 2), var))
	return true;
      /* else fall through */
    case AND:
    case IOR:
      if (FUNC9 (FUNC3 (exp, 1), var))
	return true;
      /* else fall through */
    case NOT:
      return FUNC9 (FUNC3 (exp, 0), var);

      /* MATCH_CODE uses "op", but nothing else.  */
    case MATCH_CODE:
      return !FUNC6 (var, "op");

      /* MATCH_OPERAND uses "op" and may use "mode".  */
    case MATCH_OPERAND:
      if (!FUNC6 (var, "op"))
	return true;
      if (!FUNC6 (var, "mode") && FUNC1 (exp) == VOIDmode)
	return true;
      return false;

      /* MATCH_TEST uses var if XSTR (exp, 0) =~ /\b${var}\b/o; */
    case MATCH_TEST:
      {
	const char *p = FUNC4 (exp, 0);
	const char *q = FUNC8 (p, var);
	if (!q)
	  return false;
	if (q != p && (FUNC2 (q[-1]) || q[-1] == '_'))
	  return false;
	q += FUNC7 (var);
	if (FUNC2 (q[0] || q[0] == '_'))
	  return false;
      }
      return true;

    default:
      FUNC5 ();
    }
}