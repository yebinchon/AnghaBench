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
 scalar_t__ Done ; 
 scalar_t__ Start ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 scalar_t__ amd_state ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ foreground ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(int rc)
{
  if (foreground) {
    if (amd_state != Start) {
      if (amd_state != Done)
	return;
      FUNC4();
    }
  }

#ifdef MOUNT_TABLE_ON_FILE
  /*
   * Call unlock_mntlist to free any important resources such as an on-disk
   * lock file (/etc/mtab~).
   */
  unlock_mntlist();
#endif /* MOUNT_TABLE_ON_FILE */

  if (foreground) {
    FUNC2(XLOG_INFO, "Finishing with status %d", rc);
  } else {
    FUNC0("background process exiting with status %d", rc);
  }
  /* bye bye... */
  FUNC1(rc);
}