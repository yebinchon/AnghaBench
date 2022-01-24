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
 int /*<<< orphan*/  BLKmode ; 
 int DImode ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int SImode ; 
 scalar_t__ TARGET_32BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ reload_completed ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (int regno, rtx x, int nregs)
{
  int i;
  enum machine_mode reg_mode = TARGET_32BIT ? SImode : DImode;

  if (nregs == 0)
    return;

  for (i = 0; i < nregs; i++)
    {
      rtx tem = FUNC2 (x, reg_mode, i * FUNC0 (reg_mode));
      if (reload_completed)
	{
	  if (! FUNC8 (reg_mode, FUNC1 (tem, 0)))
	    tem = NULL_RTX;
	  else
	    tem = FUNC7 (reg_mode, x, BLKmode,
				       i * FUNC0 (reg_mode));
	}
      else
	tem = FUNC6 (tem, FUNC1 (tem, 0));

      FUNC4 (tem);

      FUNC3 (tem, FUNC5 (reg_mode, regno + i));
    }
}