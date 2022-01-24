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
 int DImode ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC9 (rtx dest, rtx src, unsigned int width, int bitpos)
{
  rtx left, right;
  enum machine_mode mode;

  if (!FUNC7 (&dest, width, bitpos, &left, &right))
    return false;

  mode = FUNC8 (width, MODE_INT, 0);
  src = FUNC2 (mode, src);

  if (mode == DImode)
    {
      FUNC1 (FUNC3 (dest, src, left));
      FUNC1 (FUNC4 (FUNC0 (dest), FUNC0 (src), right));
    }
  else
    {
      FUNC1 (FUNC5 (dest, src, left));
      FUNC1 (FUNC6 (FUNC0 (dest), FUNC0 (src), right));
    }
  return true;
}