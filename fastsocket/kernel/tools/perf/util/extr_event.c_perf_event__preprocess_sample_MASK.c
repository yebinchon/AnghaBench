#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {scalar_t__ misc; } ;
union perf_event {TYPE_2__ ip; TYPE_1__ header; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct thread {scalar_t__ comm; int /*<<< orphan*/  pid; } ;
struct perf_sample {int /*<<< orphan*/  cpu; } ;
struct machine {int /*<<< orphan*/ ** vmlinux_maps; } ;
struct dso {char* long_name; scalar_t__ short_name; } ;
struct addr_location {char level; int filtered; TYPE_4__* sym; int /*<<< orphan*/  addr; TYPE_5__* map; int /*<<< orphan*/  cpu; } ;
struct TYPE_10__ {struct dso* dso; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_8__ {scalar_t__ sym_list; scalar_t__ dso_list; scalar_t__ comm_list; } ;

/* Variables and functions */
 size_t MAP__FUNCTION ; 
 scalar_t__ PERF_RECORD_MISC_CPUMODE_MASK ; 
 scalar_t__ PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct machine*) ; 
 struct thread* FUNC2 (struct machine*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 TYPE_3__ symbol_conf ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,struct machine*,scalar_t__,size_t,int /*<<< orphan*/ ,struct addr_location*) ; 

int FUNC6(const union perf_event *event,
				  struct machine *machine,
				  struct addr_location *al,
				  struct perf_sample *sample,
				  symbol_filter_t filter)
{
	u8 cpumode = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;
	struct thread *thread = FUNC2(machine, event->ip.pid);

	if (thread == NULL)
		return -1;

	if (symbol_conf.comm_list &&
	    !FUNC4(symbol_conf.comm_list, thread->comm))
		goto out_filtered;

	FUNC0(" ... thread: %s:%d\n", thread->comm, thread->pid);
	/*
	 * Have we already created the kernel maps for this machine?
	 *
	 * This should have happened earlier, when we processed the kernel MMAP
	 * events, but for older perf.data files there was no such thing, so do
	 * it now.
	 */
	if (cpumode == PERF_RECORD_MISC_KERNEL &&
	    machine->vmlinux_maps[MAP__FUNCTION] == NULL)
		FUNC1(machine);

	FUNC5(thread, machine, cpumode, MAP__FUNCTION,
			      event->ip.ip, al);
	FUNC0(" ...... dso: %s\n",
		    al->map ? al->map->dso->long_name :
			al->level == 'H' ? "[hypervisor]" : "<not found>");
	al->sym = NULL;
	al->cpu = sample->cpu;

	if (al->map) {
		struct dso *dso = al->map->dso;

		if (symbol_conf.dso_list &&
		    (!dso || !(FUNC4(symbol_conf.dso_list,
						  dso->short_name) ||
			       (dso->short_name != dso->long_name &&
				FUNC4(symbol_conf.dso_list,
						   dso->long_name)))))
			goto out_filtered;

		al->sym = FUNC3(al->map, al->addr, filter);
	}

	if (symbol_conf.sym_list &&
		(!al->sym || !FUNC4(symbol_conf.sym_list,
						al->sym->name)))
		goto out_filtered;

	return 0;

out_filtered:
	al->filtered = true;
	return 0;
}