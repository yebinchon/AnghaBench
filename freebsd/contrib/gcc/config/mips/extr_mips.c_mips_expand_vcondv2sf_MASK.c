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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  CCV2mode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*) ; 

void
FUNC6 (rtx dest, rtx true_src, rtx false_src,
		       enum rtx_code cond, rtx cmp_op0, rtx cmp_op1)
{
  rtx cmp_result;
  bool reversed_p;

  reversed_p = FUNC5 (&cond);
  cmp_result = FUNC2 (CCV2mode);
  FUNC0 (FUNC4 (cmp_result,
			 FUNC3 (cond, VOIDmode, cmp_op0, cmp_op1)));
  if (reversed_p)
    FUNC0 (FUNC1 (dest, false_src, true_src,
					 cmp_result));
  else
    FUNC0 (FUNC1 (dest, true_src, false_src,
					 cmp_result));
}