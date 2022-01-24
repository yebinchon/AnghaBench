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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int ECF_CONST ; 
 int ECF_MALLOC ; 
 int ECF_NORETURN ; 
 int ECF_NOTHROW ; 
 int ECF_NOVOPS ; 
 int ECF_PURE ; 
 int ECF_RETURNS_TWICE ; 
 int ECF_SP_DEPRESSED ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 

int
FUNC14 (tree exp)
{
  int flags = 0;
  tree type = exp;

  if (FUNC4 (exp))
    {
      type = FUNC9 (exp);

      /* The function exp may have the `malloc' attribute.  */
      if (FUNC0 (exp))
	flags |= ECF_MALLOC;

      /* The function exp may have the `returns_twice' attribute.  */
      if (FUNC3 (exp))
	flags |= ECF_RETURNS_TWICE;

      /* The function exp may have the `pure' attribute.  */
      if (FUNC2 (exp))
	flags |= ECF_PURE;

      if (FUNC1 (exp))
	flags |= ECF_NOVOPS;

      if (FUNC6 (exp))
	flags |= ECF_NOTHROW;

      if (FUNC7 (exp) && ! FUNC8 (exp))
	flags |= ECF_CONST;

      flags = FUNC13 (exp, flags);
    }
  else if (FUNC10 (exp) && FUNC11 (exp) && ! FUNC8 (exp))
    flags |= ECF_CONST;

  if (FUNC8 (exp))
    flags |= ECF_NORETURN;

  /* Mark if the function returns with the stack pointer depressed.   We
     cannot consider it pure or constant in that case.  */
  if (FUNC5 (type) == FUNCTION_TYPE && FUNC12 (type))
    {
      flags |= ECF_SP_DEPRESSED;
      flags &= ~(ECF_PURE | ECF_CONST);
    }

  return flags;
}