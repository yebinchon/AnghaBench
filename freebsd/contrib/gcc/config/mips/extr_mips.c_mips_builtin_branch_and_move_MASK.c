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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static rtx
FUNC7 (rtx condition, rtx target,
			      rtx value_if_true, rtx value_if_false)
{
  rtx true_label, done_label;

  true_label = FUNC6 ();
  done_label = FUNC6 ();

  /* First assume that CONDITION is false.  */
  FUNC3 (target, value_if_false);

  /* Branch to TRUE_LABEL if CONDITION is true and DONE_LABEL otherwise.  */
  FUNC1 (FUNC4 (condition, true_label));
  FUNC1 (FUNC5 (done_label));
  FUNC0 ();

  /* Fix TARGET if CONDITION is true.  */
  FUNC2 (true_label);
  FUNC3 (target, value_if_true);

  FUNC2 (done_label);
  return target;
}