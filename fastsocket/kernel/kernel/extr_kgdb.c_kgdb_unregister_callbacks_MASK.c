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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ kgdb_con_registered ; 
 scalar_t__ kgdb_io_module_registered ; 
 int /*<<< orphan*/  kgdbcons ; 
 int /*<<< orphan*/  sysrq_gdb_op ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	/*
	 * When this routine is called KGDB should unregister from the
	 * panic handler and clean up, making sure it is not handling any
	 * break exceptions at the time.
	 */
	if (kgdb_io_module_registered) {
		kgdb_io_module_registered = 0;
		FUNC0();
#ifdef CONFIG_MAGIC_SYSRQ
		unregister_sysrq_key('g', &sysrq_gdb_op);
#endif
		if (kgdb_con_registered) {
			FUNC1(&kgdbcons);
			kgdb_con_registered = 0;
		}
	}
}