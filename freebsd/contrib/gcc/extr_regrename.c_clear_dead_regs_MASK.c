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
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int** hard_regno_nregs ; 

__attribute__((used)) static void
FUNC7 (HARD_REG_SET *pset, enum machine_mode kind, rtx notes)
{
  rtx note;
  for (note = notes; note; note = FUNC5 (note, 1))
    if (FUNC3 (note) == kind && FUNC4 (FUNC5 (note, 0)))
      {
	rtx reg = FUNC5 (note, 0);
	unsigned int regno = FUNC2 (reg);
	int nregs = hard_regno_nregs[regno][FUNC1 (reg)];

	/* There must not be pseudos at this point.  */
	FUNC6 (regno + nregs <= FIRST_PSEUDO_REGISTER);

	while (nregs-- > 0)
	  FUNC0 (*pset, regno + nregs);
      }
}