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
struct rb_root {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {char* guestmount; scalar_t__ default_guest_kallsyms; scalar_t__ default_guest_modules; scalar_t__ default_guest_vmlinux_name; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_GUEST_KERNEL_ID ; 
 int ENOENT ; 
 scalar_t__ ERANGE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct dirent**) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,struct dirent***,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 TYPE_1__ symbol_conf ; 

int FUNC8(struct rb_root *machines)
{
	int ret = 0;
	struct dirent **namelist = NULL;
	int i, items = 0;
	char path[PATH_MAX];
	pid_t pid;
	char *endp;

	if (symbol_conf.default_guest_vmlinux_name ||
	    symbol_conf.default_guest_modules ||
	    symbol_conf.default_guest_kallsyms) {
		FUNC3(machines, DEFAULT_GUEST_KERNEL_ID);
	}

	if (symbol_conf.guestmount) {
		items = FUNC5(symbol_conf.guestmount, &namelist, NULL, NULL);
		if (items <= 0)
			return -ENOENT;
		for (i = 0; i < items; i++) {
			if (!FUNC2(namelist[i]->d_name[0])) {
				/* Filter out . and .. */
				continue;
			}
			pid = (pid_t)FUNC7(namelist[i]->d_name, &endp, 10);
			if ((*endp != '\0') ||
			    (endp == namelist[i]->d_name) ||
			    (errno == ERANGE)) {
				FUNC4("invalid directory (%s). Skipping.\n",
					 namelist[i]->d_name);
				continue;
			}
			FUNC6(path, "%s/%s/proc/kallsyms",
				symbol_conf.guestmount,
				namelist[i]->d_name);
			ret = FUNC0(path, R_OK);
			if (ret) {
				FUNC4("Can't access file %s\n", path);
				goto failure;
			}
			FUNC3(machines, pid);
		}
failure:
		FUNC1(namelist);
	}

	return ret;
}