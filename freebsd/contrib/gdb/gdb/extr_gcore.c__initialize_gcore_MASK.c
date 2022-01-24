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
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcore_command ; 
 int /*<<< orphan*/  objfile_find_memory_regions ; 

void
FUNC3 (void)
{
  FUNC0 ("generate-core-file", class_files, gcore_command,
	   "\
Save a core file with the current state of the debugged process.\n\
Argument is optional filename.  Default filename is 'core.<process_id>'.");

  FUNC1 ("gcore", "generate-core-file", class_files, 1);
  FUNC2 (objfile_find_memory_regions);
}