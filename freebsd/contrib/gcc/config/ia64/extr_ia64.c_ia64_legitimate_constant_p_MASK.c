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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  CONST 133 
#define  CONST_DOUBLE 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 131 
#define  CONST_VECTOR 130 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 129 
 int /*<<< orphan*/  MODE_VECTOR_INT ; 
 int const PLUS ; 
#define  SYMBOL_REF 128 
 int V2SFmode ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

bool
FUNC12 (rtx x)
{
  switch (FUNC1 (x))
    {
    case CONST_INT:
    case LABEL_REF:
      return true;

    case CONST_DOUBLE:
      if (FUNC2 (x) == VOIDmode)
	return true;
      return FUNC0 (x);

    case CONST:
    case SYMBOL_REF:
      /* ??? Short term workaround for PR 28490.  We must make the code here
	 match the code in ia64_expand_move and move_operand, even though they
	 are both technically wrong.  */
      if (FUNC11 (x) == 0)
	{
	  HOST_WIDE_INT addend = 0;
	  rtx op = x;

	  if (FUNC1 (op) == CONST
	      && FUNC1 (FUNC6 (op, 0)) == PLUS
	      && FUNC1 (FUNC6 (FUNC6 (op, 0), 1)) == CONST_INT)
	    {
	      addend = FUNC5 (FUNC6 (FUNC6 (op, 0), 1));
	      op = FUNC6 (FUNC6 (op, 0), 0);
	    }

          if (FUNC8 (op, FUNC2 (op))
              || FUNC9 (op, FUNC2 (op)))
            return true;
	  if (FUNC7 (op, FUNC2 (op)))
	    return (addend & 0x3fff) == 0;
	  return false;
	}
      return false;

    case CONST_VECTOR:
      {
	enum machine_mode mode = FUNC2 (x);

	if (mode == V2SFmode)
	  return FUNC10 (x, 'Y');

	return (FUNC3 (mode) == MODE_VECTOR_INT
		&& FUNC4 (mode) <= 8);
      }

    default:
      return false;
    }
}