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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  info_proc_cmd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  proc_trace_sysentry_cmd ; 
 int /*<<< orphan*/  proc_trace_sysexit_cmd ; 
 int /*<<< orphan*/  proc_untrace_sysentry_cmd ; 
 int /*<<< orphan*/  proc_untrace_sysexit_cmd ; 
 int /*<<< orphan*/  procfs_ops ; 

void
FUNC4 (void)
{
  FUNC3 ();
  FUNC2 (&procfs_ops);
  FUNC1 ("proc", info_proc_cmd,
	    "Show /proc process information about any running process.\n\
Specify process id, or use the program being debugged by default.\n\
Specify keyword 'mappings' for detailed info on memory mappings.");
  FUNC0 ("proc-trace-entry", no_class, proc_trace_sysentry_cmd,
	   "Give a trace of entries into the syscall.");
  FUNC0 ("proc-trace-exit", no_class, proc_trace_sysexit_cmd,
	   "Give a trace of exits from the syscall.");
  FUNC0 ("proc-untrace-entry", no_class, proc_untrace_sysentry_cmd,
	   "Cancel a trace of entries into the syscall.");
  FUNC0 ("proc-untrace-exit", no_class, proc_untrace_sysexit_cmd,
	   "Cancel a trace of exits from the syscall.");
}