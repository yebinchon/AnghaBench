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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int fp_consts_inited ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * values_fp ; 

int
FUNC4 (rtx x)
{
  REAL_VALUE_TYPE r;
  int i;

  if (!fp_consts_inited)
    FUNC3 ();

  FUNC1 (r, x);
  if (FUNC2 (r))
    return 0;

  for (i = 0; i < fp_consts_inited; i++)
    if (FUNC0 (r, values_fp[i]))
      return 1;

  return 0;
}