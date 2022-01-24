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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTX_BIN_ARITH ; 
 scalar_t__ RTX_UNARY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC7 (rtx op, int *paddressp)
{
  tree expr;
  int inner_addressp;

  *paddressp = 0;

  if (FUNC5 (op))
    return FUNC4 (op);
  else if (!FUNC3 (op))
    return 0;

  if (FUNC2 (op) != 0)
    return FUNC2 (op);

  /* Otherwise we have an address, so indicate it and look at the address.  */
  *paddressp = 1;
  op = FUNC6 (op, 0);

  /* First check if we have a decl for the address, then look at the right side
     if it is a PLUS.  Otherwise, strip off arithmetic and keep looking.
     But don't allow the address to itself be indirect.  */
  if ((expr = FUNC7 (op, &inner_addressp)) && ! inner_addressp)
    return expr;
  else if (FUNC0 (op) == PLUS
	   && (expr = FUNC7 (FUNC6 (op, 1), &inner_addressp)))
    return expr;

  while (FUNC1 (FUNC0 (op)) == RTX_UNARY
	 || FUNC1 (FUNC0 (op)) == RTX_BIN_ARITH)
    op = FUNC6 (op, 0);

  expr = FUNC7 (op, &inner_addressp);
  return inner_addressp ? 0 : expr;
}