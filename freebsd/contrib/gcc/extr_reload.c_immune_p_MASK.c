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
struct decomposition {scalar_t__ start; scalar_t__ end; scalar_t__ base; scalar_t__ safe; scalar_t__ reg_flag; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct decomposition FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 

__attribute__((used)) static int
FUNC6 (rtx x, rtx y, struct decomposition ydata)
{
  struct decomposition xdata;

  if (ydata.reg_flag)
    return !FUNC4 (ydata.start, ydata.end, x, (rtx*) 0);
  if (ydata.safe)
    return 1;

  FUNC3 (FUNC1 (y));
  /* If Y is memory and X is not, Y can't affect X.  */
  if (!FUNC1 (x))
    return 1;

  xdata = FUNC2 (x);

  if (! FUNC5 (xdata.base, ydata.base))
    {
      /* If bases are distinct symbolic constants, there is no overlap.  */
      if (FUNC0 (xdata.base) && FUNC0 (ydata.base))
	return 1;
      /* Constants and stack slots never overlap.  */
      if (FUNC0 (xdata.base)
	  && (ydata.base == frame_pointer_rtx
	      || ydata.base == hard_frame_pointer_rtx
	      || ydata.base == stack_pointer_rtx))
	return 1;
      if (FUNC0 (ydata.base)
	  && (xdata.base == frame_pointer_rtx
	      || xdata.base == hard_frame_pointer_rtx
	      || xdata.base == stack_pointer_rtx))
	return 1;
      /* If either base is variable, we don't know anything.  */
      return 0;
    }

  return (xdata.start >= ydata.end || ydata.start >= xdata.end);
}