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
#define  AND 129 
#define  IOR 128 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const_true_rtx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (enum rtx_code op, rtx a, rtx *b)
{
  switch (op)
    {
    case AND:
      /* If A implies *B, we may replace *B by true.  */
      if (FUNC1 (a, *b))
	*b = const_true_rtx;
      break;

    case IOR:
      /* If *B implies A, we may replace *B by false.  */
      if (FUNC1 (*b, a))
	*b = const0_rtx;
      break;

    default:
      FUNC0 ();
    }
}