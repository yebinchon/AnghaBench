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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,...) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 scalar_t__ stdout ; 

void
FUNC3 (char *msg, char *file, int line)
{
  FUNC2 ();
  if (procfs_trace)
    {
      if (info_verbose)
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "%s:%d -- ", file, line);
      FUNC1 (procfs_file ? procfs_file : stdout, "%s", msg);
      if (procfs_file)
	FUNC0 (procfs_file);
    }
}