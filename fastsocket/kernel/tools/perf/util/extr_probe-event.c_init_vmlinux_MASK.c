#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sort_by_name; int try_vmlinux_path; int /*<<< orphan*/ * vmlinux_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_KERNEL_ID ; 
 int /*<<< orphan*/  machine ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	symbol_conf.sort_by_name = true;
	if (symbol_conf.vmlinux_name == NULL)
		symbol_conf.try_vmlinux_path = true;
	else
		FUNC2("Use vmlinux: %s\n", symbol_conf.vmlinux_name);
	ret = FUNC4();
	if (ret < 0) {
		FUNC2("Failed to init symbol map.\n");
		goto out;
	}

	ret = FUNC1(&machine, "", HOST_KERNEL_ID);
	if (ret < 0)
		goto out;

	if (FUNC0(&machine) < 0) {
		FUNC2("machine__create_kernel_maps() failed.\n");
		goto out;
	}
out:
	if (ret < 0)
		FUNC3("Failed to init vmlinux path.\n");
	return ret;
}