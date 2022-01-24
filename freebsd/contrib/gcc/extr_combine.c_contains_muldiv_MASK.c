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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_INT ; 
#define  DIV 132 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  MOD 131 
#define  MULT 130 
#define  UDIV 129 
#define  UMOD 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx x)
{
  switch (FUNC1 (x))
    {
    case MOD:  case DIV:  case UMOD:  case UDIV:
      return 1;

    case MULT:
      return ! (FUNC1 (FUNC4 (x, 1)) == CONST_INT
		&& FUNC5 (FUNC2 (FUNC4 (x, 1))) >= 0);
    default:
      if (FUNC0 (x))
	return FUNC6 (FUNC4 (x, 0))
	    || FUNC6 (FUNC4 (x, 1));

      if (FUNC3 (x))
	return FUNC6 (FUNC4 (x, 0));

      return 0;
    }
}