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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6 (rtx dst, rtx src, tree type, int ssize)
{
  rtx *tmps;
  int i;

  tmps = FUNC3 (sizeof (rtx) * FUNC2 (dst, 0));
  FUNC4 (tmps, dst, src, type, ssize);

  /* Copy the extracted pieces into the proper (probable) hard regs.  */
  for (i = 0; i < FUNC2 (dst, 0); i++)
    {
      rtx d = FUNC0 (FUNC1 (dst, 0, i), 0);
      if (d == NULL)
	continue;
      FUNC5 (d, tmps[i]);
    }
}