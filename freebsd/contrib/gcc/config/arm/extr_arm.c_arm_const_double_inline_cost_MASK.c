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
 scalar_t__ CONST_INT ; 
 int DImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  SImode ; 
 int VOIDmode ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8 (rtx val)
{
  rtx lowpart, highpart;
  enum machine_mode mode;

  mode = FUNC1 (val);

  if (mode == VOIDmode)
    mode = DImode;

  FUNC5 (FUNC2 (mode) == 8);

  lowpart = FUNC7 (SImode, val);
  highpart = FUNC6 (SImode, mode, val);

  FUNC5 (FUNC0 (lowpart) == CONST_INT);
  FUNC5 (FUNC0 (highpart) == CONST_INT);

  return (FUNC4 (SET, SImode, NULL_RTX, FUNC3 (lowpart),
			    NULL_RTX, NULL_RTX, 0, 0)
	  + FUNC4 (SET, SImode, NULL_RTX, FUNC3 (highpart),
			      NULL_RTX, NULL_RTX, 0, 0));
}