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
 long PR_ISTOP ; 
 long PR_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 scalar_t__ stdout ; 

void
FUNC5 (long flags, int why, int what, int thread)
{
  FUNC2 ();
  if (procfs_trace)
    {
      if (thread)
	FUNC1 (procfs_file ? procfs_file : stdout,
		 "Thread %d: ", thread);

      FUNC3 (procfs_file ? procfs_file : stdout, 
			       flags, 0);

      if (flags & (PR_STOPPED | PR_ISTOP))
	FUNC4 (procfs_file ? procfs_file : stdout, 
			       why, what, 0);
      if (procfs_file)
	FUNC0 (procfs_file);
    }
}