#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  pid; scalar_t__ start; scalar_t__ len; int /*<<< orphan*/  pgoff; TYPE_2__ header; int /*<<< orphan*/  filename; } ;
struct TYPE_5__ {int /*<<< orphan*/  misc; } ;
union perf_event {TYPE_3__ mmap; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  u64 ;
struct process_symbol_args {char const* name; int /*<<< orphan*/  start; } ;
struct perf_tool {int dummy; } ;
struct map {scalar_t__ end; scalar_t__ start; } ;
struct machine {int id_hdr_size; char* root_dir; int /*<<< orphan*/  pid; struct map** vmlinux_maps; } ;
typedef  int (* perf_event__handler_t ) (struct perf_tool*,union perf_event*,int /*<<< orphan*/ *,struct machine*) ;
typedef  int /*<<< orphan*/  name_buff ;
struct TYPE_8__ {scalar_t__ default_guest_kallsyms; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t MAP__FUNCTION ; 
 int PATH_MAX ; 
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_GUEST_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MMAP ; 
 int /*<<< orphan*/  find_symbol_cb ; 
 int /*<<< orphan*/  FUNC1 (union perf_event*) ; 
 scalar_t__ FUNC2 (char const*,struct process_symbol_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 scalar_t__ FUNC4 (struct machine*) ; 
 char* FUNC5 (struct machine*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 TYPE_4__ symbol_conf ; 
 int /*<<< orphan*/  synth_sample ; 
 union perf_event* FUNC9 (int) ; 

int FUNC10(struct perf_tool *tool,
				       perf_event__handler_t process,
				       struct machine *machine,
				       const char *symbol_name)
{
	size_t size;
	const char *filename, *mmap_name;
	char path[PATH_MAX];
	char name_buff[PATH_MAX];
	struct map *map;
	int err;
	/*
	 * We should get this from /sys/kernel/sections/.text, but till that is
	 * available use this, and after it is use this as a fallback for older
	 * kernels.
	 */
	struct process_symbol_args args = { .name = symbol_name, };
	union perf_event *event = FUNC9((sizeof(event->mmap) +
					  machine->id_hdr_size));
	if (event == NULL) {
		FUNC6("Not enough memory synthesizing mmap event "
			 "for kernel modules\n");
		return -1;
	}

	mmap_name = FUNC5(machine, name_buff, sizeof(name_buff));
	if (FUNC4(machine)) {
		/*
		 * kernel uses PERF_RECORD_MISC_USER for user space maps,
		 * see kernel/perf_event.c __perf_event_mmap
		 */
		event->header.misc = PERF_RECORD_MISC_KERNEL;
		filename = "/proc/kallsyms";
	} else {
		event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;
		if (FUNC3(machine))
			filename = (char *) symbol_conf.default_guest_kallsyms;
		else {
			FUNC8(path, "%s/proc/kallsyms", machine->root_dir);
			filename = path;
		}
	}

	if (FUNC2(filename, &args, find_symbol_cb) <= 0)
		return -ENOENT;

	map = machine->vmlinux_maps[MAP__FUNCTION];
	size = FUNC7(event->mmap.filename, sizeof(event->mmap.filename),
			"%s%s", mmap_name, symbol_name) + 1;
	size = FUNC0(size, sizeof(u64));
	event->mmap.header.type = PERF_RECORD_MMAP;
	event->mmap.header.size = (sizeof(event->mmap) -
			(sizeof(event->mmap.filename) - size) + machine->id_hdr_size);
	event->mmap.pgoff = args.start;
	event->mmap.start = map->start;
	event->mmap.len   = map->end - event->mmap.start;
	event->mmap.pid   = machine->pid;

	err = process(tool, event, &synth_sample, machine);
	FUNC1(event);

	return err;
}