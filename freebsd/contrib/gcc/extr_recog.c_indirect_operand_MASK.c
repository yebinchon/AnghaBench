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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SUBREG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC9 (rtx op, enum machine_mode mode)
{
  /* Before reload, a SUBREG isn't in memory (see memory_operand, above).  */
  if (! reload_completed
      && FUNC0 (op) == SUBREG && FUNC3 (FUNC5 (op)))
    {
      int offset = FUNC4 (op);
      rtx inner = FUNC5 (op);

      if (mode != VOIDmode && FUNC1 (op) != mode)
	return 0;

      /* The only way that we can have a general_operand as the resulting
	 address is if OFFSET is zero and the address already is an operand
	 or if the address is (plus Y (const_int -OFFSET)) and Y is an
	 operand.  */

      return ((offset == 0 && FUNC7 (FUNC6 (inner, 0), Pmode))
	      || (FUNC0 (FUNC6 (inner, 0)) == PLUS
		  && FUNC0 (FUNC6 (FUNC6 (inner, 0), 1)) == CONST_INT
		  && FUNC2 (FUNC6 (FUNC6 (inner, 0), 1)) == -offset
		  && FUNC7 (FUNC6 (FUNC6 (inner, 0), 0), Pmode)));
    }

  return (FUNC3 (op)
	  && FUNC8 (op, mode)
	  && FUNC7 (FUNC6 (op, 0), Pmode));
}