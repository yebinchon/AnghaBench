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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  build_regcache ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deprecated_register_valid ; 
 int /*<<< orphan*/  deprecated_registers ; 
 int /*<<< orphan*/  init_regcache_descr ; 
 int /*<<< orphan*/  maintenance_print_cooked_registers ; 
 int /*<<< orphan*/  maintenance_print_raw_registers ; 
 int /*<<< orphan*/  maintenance_print_register_groups ; 
 int /*<<< orphan*/  maintenance_print_registers ; 
 int /*<<< orphan*/  maintenanceprintlist ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  reg_flush_command ; 
 int /*<<< orphan*/  regcache_descr_handle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  registers_ptid ; 

void
FUNC6 (void)
{
  regcache_descr_handle = FUNC5 (init_regcache_descr);
  FUNC0 (current_regcache);
  FUNC0 (deprecated_registers);
  FUNC0 (deprecated_register_valid);
  FUNC3 (NULL, 0, build_regcache);

  FUNC2 ("flushregs", class_maintenance, reg_flush_command,
	   "Force gdb to flush its register cache (maintainer command)");

   /* Initialize the thread/process associated with the current set of
      registers.  For now, -1 is special, and means `no current process'.  */
  registers_ptid = FUNC4 (-1);

  FUNC1 ("registers", class_maintenance,
	   maintenance_print_registers,
	   "Print the internal register configuration.\
Takes an optional file parameter.",
	   &maintenanceprintlist);
  FUNC1 ("raw-registers", class_maintenance,
	   maintenance_print_raw_registers,
	   "Print the internal register configuration including raw values.\
Takes an optional file parameter.",
	   &maintenanceprintlist);
  FUNC1 ("cooked-registers", class_maintenance,
	   maintenance_print_cooked_registers,
	   "Print the internal register configuration including cooked values.\
Takes an optional file parameter.",
	   &maintenanceprintlist);
  FUNC1 ("register-groups", class_maintenance,
	   maintenance_print_register_groups,
	   "Print the internal register configuration including each register's group.\
Takes an optional file parameter.",
	   &maintenanceprintlist);

}