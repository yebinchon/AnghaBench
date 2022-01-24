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
typedef  int /*<<< orphan*/  u64 ;
struct process_args {int /*<<< orphan*/  start; } ;
struct machine {char* root_dir; } ;
struct TYPE_2__ {scalar_t__ default_guest_kallsyms; } ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char const*,struct process_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 scalar_t__ FUNC2 (struct machine*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  symbol__in_kernel ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static u64 FUNC5(struct machine *machine)
{
	const char *filename;
	char path[PATH_MAX];
	struct process_args args;

	if (FUNC2(machine)) {
		filename = "/proc/kallsyms";
	} else {
		if (FUNC1(machine))
			filename = (char *)symbol_conf.default_guest_kallsyms;
		else {
			FUNC3(path, "%s/proc/kallsyms", machine->root_dir);
			filename = path;
		}
	}

	if (FUNC4(filename, "/proc/kallsyms"))
		return 0;

	if (FUNC0(filename, &args, symbol__in_kernel) <= 0)
		return 0;

	return args.start;
}