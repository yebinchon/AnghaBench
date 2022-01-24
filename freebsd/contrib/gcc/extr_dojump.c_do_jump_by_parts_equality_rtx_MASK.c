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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  EQ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int UNITS_PER_WORD ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static void
FUNC7 (enum machine_mode mode, rtx op0, rtx op1,
			       rtx if_false_label, rtx if_true_label)
{
  int nwords = (FUNC0 (mode) / UNITS_PER_WORD);
  rtx drop_through_label = 0;
  int i;

  if (op1 == const0_rtx)
    {
      FUNC2 (mode, op0, if_false_label, if_true_label);
      return;
    }
  else if (op0 == const0_rtx)
    {
      FUNC2 (mode, op1, if_false_label, if_true_label);
      return;
    }

  if (! if_false_label)
    drop_through_label = if_false_label = FUNC5 ();

  for (i = 0; i < nwords; i++)
    FUNC1 (FUNC6 (op0, i, mode),
                             FUNC6 (op1, i, mode),
                             EQ, 0, word_mode, NULL_RTX,
			     if_false_label, NULL_RTX);

  if (if_true_label)
    FUNC3 (if_true_label);
  if (drop_through_label)
    FUNC4 (drop_through_label);
}