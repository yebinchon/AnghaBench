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
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

bool
FUNC5 (rtx insn, enum machine_mode req_mode)
{
  int i;

  /* s390_tm_ccmode returns VOIDmode to indicate failure.  */
  if (req_mode == VOIDmode)
    return false;

  if (FUNC0 (FUNC1 (insn)) == SET)
    return FUNC4 (FUNC1 (insn), req_mode);

  if (FUNC0 (FUNC1 (insn)) == PARALLEL)
      for (i = 0; i < FUNC3 (FUNC1 (insn), 0); i++)
        {
          rtx set = FUNC2 (FUNC1 (insn), 0, i);
          if (FUNC0 (set) == SET)
            if (!FUNC4 (set, req_mode))
              return false;
        }

  return true;
}