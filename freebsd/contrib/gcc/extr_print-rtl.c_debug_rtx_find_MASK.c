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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  debug_rtx_count ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

rtx
FUNC4 (rtx x, int uid)
{
  while (x != 0 && FUNC0 (x) != uid)
    x = FUNC1 (x);
  if (x != 0)
    {
      FUNC2 (x, debug_rtx_count);
      return x;
    }
  else
    {
      FUNC3 (stderr, "insn uid %d not found\n", uid);
      return 0;
    }
}