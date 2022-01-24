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
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ exec_done_display_p ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ sync_execution ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ target_executing ; 

__attribute__((used)) static void
FUNC4 (void)
{
  target_executing = 0;
  
  /* Unregister the inferior from the event loop. This is done so that
     when the inferior is not running we don't get distracted by
     spurious inferior output. */
  FUNC3 (NULL, 0);

  if (sync_execution)
    {
      FUNC1 (ALL_CLEANUPS);
      FUNC0 (0);
    }
  else
    {
      if (exec_done_display_p)
	FUNC2 ("completed.\n");
    }
}