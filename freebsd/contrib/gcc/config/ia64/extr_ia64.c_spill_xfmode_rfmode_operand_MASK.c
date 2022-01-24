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
 scalar_t__ REG ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TImode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (rtx in, int force, enum machine_mode mode)
{
  if (FUNC0 (in) == SUBREG
      && FUNC1 (FUNC2 (in)) == TImode
      && FUNC0 (FUNC2 (in)) == REG)
    {
      rtx memt = FUNC4 (TImode, 16, 0);
      FUNC5 (memt, FUNC2 (in));
      return FUNC3 (memt, mode, 0);
    }
  else if (force && FUNC0 (in) == REG)
    {
      rtx memx = FUNC4 (mode, 16, 0);
      FUNC5 (memx, in);
      return memx;
    }
  else
    return in;
}