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
 int /*<<< orphan*/  fp_consts_inited ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const** strings_fp ; 
 int /*<<< orphan*/ * values_fp ; 

const char *
FUNC4 (rtx x)
{
  REAL_VALUE_TYPE r;
  int i;

  if (!fp_consts_inited)
    FUNC3 ();

  FUNC1 (r, x);
  for (i = 0; i < 8; i++)
    if (FUNC0 (r, values_fp[i]))
      return strings_fp[i];

  FUNC2 ();
}