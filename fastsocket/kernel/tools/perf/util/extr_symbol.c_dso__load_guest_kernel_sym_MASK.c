#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct map {TYPE_1__* groups; } ;
struct machine {char* root_dir; } ;
struct dso {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_4__ {char* default_guest_kallsyms; int /*<<< orphan*/ * default_guest_vmlinux_name; } ;
struct TYPE_3__ {struct machine* machine; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (struct dso*,char const*,struct map*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dso*,struct map*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 int /*<<< orphan*/  FUNC4 (struct machine*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct map*) ; 
 int /*<<< orphan*/  FUNC6 (struct map*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__ symbol_conf ; 

__attribute__((used)) static int FUNC10(struct dso *dso, struct map *map,
				      symbol_filter_t filter)
{
	int err;
	const char *kallsyms_filename = NULL;
	struct machine *machine;
	char path[PATH_MAX];

	if (!map->groups) {
		FUNC7("Guest kernel map hasn't the point to groups\n");
		return -1;
	}
	machine = map->groups->machine;

	if (FUNC3(machine)) {
		/*
		 * if the user specified a vmlinux filename, use it and only
		 * it, reporting errors to the user if it cannot be used.
		 * Or use file guest_kallsyms inputted by user on commandline
		 */
		if (symbol_conf.default_guest_vmlinux_name != NULL) {
			err = FUNC1(dso, map,
				symbol_conf.default_guest_vmlinux_name, filter);
			goto out_try_fixup;
		}

		kallsyms_filename = symbol_conf.default_guest_kallsyms;
		if (!kallsyms_filename)
			return -1;
	} else {
		FUNC8(path, "%s/proc/kallsyms", machine->root_dir);
		kallsyms_filename = path;
	}

	err = FUNC0(dso, kallsyms_filename, map, filter);
	if (err > 0)
		FUNC7("Using %s for symbols\n", kallsyms_filename);

out_try_fixup:
	if (err > 0) {
		if (kallsyms_filename != NULL) {
			FUNC4(machine, path, sizeof(path));
			FUNC2(dso, FUNC9(path));
		}
		FUNC6(map);
		FUNC5(map);
	}

	return err;
}