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

/* Variables and functions */
 int current_display_number ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 

void
FUNC2 (void)
{
  if (current_display_number >= 0)
    {
      FUNC0 (current_display_number);
      FUNC1 (gdb_stderr, "Disabling display %d to avoid infinite recursion.\n",
			  current_display_number);
    }
  current_display_number = -1;
}