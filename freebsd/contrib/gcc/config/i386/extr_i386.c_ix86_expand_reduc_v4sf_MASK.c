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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  V4SFmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (rtx (*fn) (rtx, rtx, rtx), rtx dest, rtx in)
{
  rtx tmp1, tmp2, tmp3;

  tmp1 = FUNC2 (V4SFmode);
  tmp2 = FUNC2 (V4SFmode);
  tmp3 = FUNC2 (V4SFmode);

  FUNC1 (FUNC3 (tmp1, in, in));
  FUNC1 (fn (tmp2, tmp1, in));

  FUNC1 (FUNC4 (tmp3, tmp2, tmp2,
			       FUNC0 (1), FUNC0 (1),
			       FUNC0 (1+4), FUNC0 (1+4)));
  FUNC1 (fn (dest, tmp2, tmp3));
}