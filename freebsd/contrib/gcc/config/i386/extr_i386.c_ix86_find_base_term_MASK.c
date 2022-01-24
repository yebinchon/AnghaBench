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
 scalar_t__ CONST ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ PLUS ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_GOTPCREL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

rtx
FUNC5 (rtx x)
{
  rtx term;

  if (TARGET_64BIT)
    {
      if (FUNC0 (x) != CONST)
	return x;
      term = FUNC1 (x, 0);
      if (FUNC0 (term) == PLUS
	  && (FUNC0 (FUNC1 (term, 1)) == CONST_INT
	      || FUNC0 (FUNC1 (term, 1)) == CONST_DOUBLE))
	term = FUNC1 (term, 0);
      if (FUNC0 (term) != UNSPEC
	  || FUNC2 (term, 1) != UNSPEC_GOTPCREL)
	return x;

      term = FUNC3 (term, 0, 0);

      if (FUNC0 (term) != SYMBOL_REF
	  && FUNC0 (term) != LABEL_REF)
	return x;

      return term;
    }

  term = FUNC4 (x);

  if (FUNC0 (term) != SYMBOL_REF
      && FUNC0 (term) != LABEL_REF)
    return x;

  return term;
}