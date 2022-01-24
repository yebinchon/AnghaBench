#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ truncated_to_mode; scalar_t__ truncation_label; } ;

/* Variables and functions */
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ label_tick ; 
 TYPE_1__* reg_stat ; 

__attribute__((used)) static void
FUNC8 (rtx x)
{
  enum machine_mode truncated_mode;

  if (FUNC0 (x) == SUBREG && FUNC5 (FUNC6 (x)))
    {
      enum machine_mode original_mode = FUNC1 (FUNC6 (x));
      truncated_mode = FUNC1 (x);

      if (FUNC3 (original_mode) <= FUNC3 (truncated_mode))
	return;

      if (FUNC7 (FUNC2 (truncated_mode),
				 FUNC2 (original_mode)))
	return;

      x = FUNC6 (x);
    }
  /* ??? For hard-regs we now record everything.  We might be able to
     optimize this using last_set_mode.  */
  else if (FUNC5 (x) && FUNC4 (x) < FIRST_PSEUDO_REGISTER)
    truncated_mode = FUNC1 (x);
  else
    return;

  if (reg_stat[FUNC4 (x)].truncated_to_mode == 0
      || reg_stat[FUNC4 (x)].truncation_label < label_tick
      || (FUNC3 (truncated_mode)
	  < FUNC3 (reg_stat[FUNC4 (x)].truncated_to_mode)))
    {
      reg_stat[FUNC4 (x)].truncated_to_mode = truncated_mode;
      reg_stat[FUNC4 (x)].truncation_label = label_tick;
    }
}