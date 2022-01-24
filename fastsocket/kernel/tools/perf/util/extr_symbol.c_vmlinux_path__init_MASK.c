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
struct utsname {char* release; } ;
typedef  int /*<<< orphan*/  bf ;
struct TYPE_2__ {scalar_t__* symfs; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/ ** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 TYPE_1__ symbol_conf ; 
 scalar_t__ FUNC3 (struct utsname*) ; 
 int /*<<< orphan*/ ** vmlinux_path ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t vmlinux_path__nr_entries ; 

__attribute__((used)) static int FUNC5(void)
{
	struct utsname uts;
	char bf[PATH_MAX];

	vmlinux_path = FUNC0(sizeof(char *) * 5);
	if (vmlinux_path == NULL)
		return -1;

	vmlinux_path[vmlinux_path__nr_entries] = FUNC2("vmlinux");
	if (vmlinux_path[vmlinux_path__nr_entries] == NULL)
		goto out_fail;
	++vmlinux_path__nr_entries;
	vmlinux_path[vmlinux_path__nr_entries] = FUNC2("/boot/vmlinux");
	if (vmlinux_path[vmlinux_path__nr_entries] == NULL)
		goto out_fail;
	++vmlinux_path__nr_entries;

	/* only try running kernel version if no symfs was given */
	if (symbol_conf.symfs[0] != 0)
		return 0;

	if (FUNC3(&uts) < 0)
		return -1;

	FUNC1(bf, sizeof(bf), "/boot/vmlinux-%s", uts.release);
	vmlinux_path[vmlinux_path__nr_entries] = FUNC2(bf);
	if (vmlinux_path[vmlinux_path__nr_entries] == NULL)
		goto out_fail;
	++vmlinux_path__nr_entries;
	FUNC1(bf, sizeof(bf), "/lib/modules/%s/build/vmlinux", uts.release);
	vmlinux_path[vmlinux_path__nr_entries] = FUNC2(bf);
	if (vmlinux_path[vmlinux_path__nr_entries] == NULL)
		goto out_fail;
	++vmlinux_path__nr_entries;
	FUNC1(bf, sizeof(bf), "/usr/lib/debug/lib/modules/%s/vmlinux",
		 uts.release);
	vmlinux_path[vmlinux_path__nr_entries] = FUNC2(bf);
	if (vmlinux_path[vmlinux_path__nr_entries] == NULL)
		goto out_fail;
	++vmlinux_path__nr_entries;

	return 0;

out_fail:
	FUNC4();
	return -1;
}