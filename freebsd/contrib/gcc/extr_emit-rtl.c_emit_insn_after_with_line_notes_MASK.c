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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void
FUNC3 (rtx x, rtx after, rtx from)
{
  rtx from_line = FUNC2 (from);
  rtx after_line = FUNC2 (after);
  rtx insn = FUNC0 (x, after);

  if (from_line)
    FUNC1 (from_line, after);

  if (after_line)
    FUNC1 (after_line, insn);
}