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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * procfs_file ; 
 int /*<<< orphan*/ * procfs_filename ; 
 scalar_t__ procfs_trace ; 

__attribute__((used)) static void
FUNC1 (void)
{
  if (procfs_trace)			/* if procfs tracing turned on */
    if (procfs_file == NULL)		/* if output file not yet open */
      if (procfs_filename != NULL)	/* if output filename known */
	procfs_file = FUNC0 (procfs_filename, "a");	/* open output file */
}