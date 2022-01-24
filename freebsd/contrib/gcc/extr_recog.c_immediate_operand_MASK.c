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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  flag_pic ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 

int
FUNC8 (rtx op, enum machine_mode mode)
{
  /* Don't accept CONST_INT or anything similar
     if the caller wants something floating.  */
  if (FUNC2 (op) == VOIDmode && mode != VOIDmode
      && FUNC3 (mode) != MODE_INT
      && FUNC3 (mode) != MODE_PARTIAL_INT)
    return 0;

  if (FUNC1 (op) == CONST_INT
      && mode != VOIDmode
      && FUNC7 (FUNC4 (op), mode) != FUNC4 (op))
    return 0;

  return (FUNC0 (op)
	  && (FUNC2 (op) == mode || mode == VOIDmode
	      || FUNC2 (op) == VOIDmode)
	  && (! flag_pic || FUNC6 (op))
	  && FUNC5 (op));
}