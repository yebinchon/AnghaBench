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
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__** hard_regno_nregs ; 

rtx
FUNC3 (rtx reloadreg, enum machine_mode mode)
{
  int regno;

  if (FUNC0 (reloadreg) == mode)
    return reloadreg;

  regno = FUNC1 (reloadreg);

  if (WORDS_BIG_ENDIAN)
    regno += (int) hard_regno_nregs[regno][FUNC0 (reloadreg)]
      - (int) hard_regno_nregs[regno][mode];

  return FUNC2 (mode, regno);
}