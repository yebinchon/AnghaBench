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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int GE ; 
 int FUNC0 (scalar_t__) ; 
 int GEU ; 
 int SMAX ; 
 int SMIN ; 
 int UMAX ; 
 scalar_t__ FUNC1 (scalar_t__,int,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4 (rtx dest, enum rtx_code code, rtx op0, rtx op1)
{
  enum machine_mode mode = FUNC0 (op0);
  enum rtx_code c;
  rtx target;

  if (code == SMAX || code == SMIN)
    c = GE;
  else
    c = GEU;

  if (code == SMAX || code == UMAX)
    target = FUNC1 (dest, c, op0, op1, mode,
				    op0, op1, mode, 0);
  else
    target = FUNC1 (dest, c, op0, op1, mode,
				    op1, op0, mode, 0);
  FUNC3 (target);
  if (target != dest)
    FUNC2 (dest, target);
}