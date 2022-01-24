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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ SUBREG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC13 (rtx op, enum machine_mode mode, enum machine_mode oldmode,
	       int unsignedp, int no_extend)
{
  rtx result;

  /* If we don't have to extend and this is a constant, return it.  */
  if (no_extend && FUNC1 (op) == VOIDmode)
    return op;

  /* If we must extend do so.  If OP is a SUBREG for a promoted object, also
     extend since it will be more efficient to do so unless the signedness of
     a promoted object differs from our extension.  */
  if (! no_extend
      || (FUNC0 (op) == SUBREG && FUNC4 (op)
	  && FUNC3 (op) == unsignedp))
    return FUNC5 (mode, oldmode, op, unsignedp);

  /* If MODE is no wider than a single word, we return a paradoxical
     SUBREG.  */
  if (FUNC2 (mode) <= UNITS_PER_WORD)
    return FUNC12 (mode, FUNC8 (FUNC1 (op), op), 0);

  /* Otherwise, get an object of MODE, clobber it, and set the low-order
     part to OP.  */

  result = FUNC10 (mode);
  FUNC6 (FUNC11 (VOIDmode, result));
  FUNC7 (FUNC9 (FUNC1 (op), result), op);
  return result;
}