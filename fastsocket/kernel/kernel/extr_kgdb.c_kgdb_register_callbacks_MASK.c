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
 int kgdb_con_registered ; 
 int kgdb_io_module_registered ; 
 scalar_t__ kgdb_use_con ; 
 int /*<<< orphan*/  kgdbcons ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysrq_gdb_op ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!kgdb_io_module_registered) {
		kgdb_io_module_registered = 1;
		FUNC0();
#ifdef CONFIG_MAGIC_SYSRQ
		register_sysrq_key('g', &sysrq_gdb_op);
#endif
		if (kgdb_use_con && !kgdb_con_registered) {
			FUNC1(&kgdbcons);
			kgdb_con_registered = 1;
		}
	}
}