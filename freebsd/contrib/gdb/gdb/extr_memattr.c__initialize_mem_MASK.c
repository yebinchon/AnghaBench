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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  class_vars ; 
 int /*<<< orphan*/  deletelist ; 
 int /*<<< orphan*/  disablelist ; 
 int /*<<< orphan*/  enablelist ; 
 int /*<<< orphan*/  mem_command ; 
 int /*<<< orphan*/  mem_delete_command ; 
 int /*<<< orphan*/  mem_disable_command ; 
 int /*<<< orphan*/  mem_enable_command ; 
 int /*<<< orphan*/  mem_info_command ; 

void
FUNC3 (void)
{
  FUNC1 ("mem", class_vars, mem_command,
	   "Define attributes for memory region.\n\
Usage: mem <lo addr> <hi addr> [<mode> <width> <cache>], \n\
where <mode>  may be rw (read/write), ro (read-only) or wo (write-only), \n\
      <width> may be 8, 16, 32, or 64, and \n\
      <cache> may be cache or nocache");

  FUNC0 ("mem", class_vars, mem_enable_command,
	   "Enable memory region.\n\
Arguments are the code numbers of the memory regions to enable.\n\
Usage: enable mem <code number>\n\
Do \"info mem\" to see current list of code numbers.", &enablelist);

  FUNC0 ("mem", class_vars, mem_disable_command,
	   "Disable memory region.\n\
Arguments are the code numbers of the memory regions to disable.\n\
Usage: disable mem <code number>\n\
Do \"info mem\" to see current list of code numbers.", &disablelist);

  FUNC0 ("mem", class_vars, mem_delete_command,
	   "Delete memory region.\n\
Arguments are the code numbers of the memory regions to delete.\n\
Usage: delete mem <code number>\n\
Do \"info mem\" to see current list of code numbers.", &deletelist);

  FUNC2 ("mem", mem_info_command,
	    "Memory region attributes");
}