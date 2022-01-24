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
struct perf_tool {int dummy; } ;
struct machine {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct machine*) ; 
 int FUNC1 (struct perf_tool*,int /*<<< orphan*/ ,struct machine*,char*) ; 
 int FUNC2 (struct perf_tool*,int /*<<< orphan*/ ,struct machine*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_synthesized_event ; 

__attribute__((used)) static void FUNC4(struct machine *machine, void *data)
{
	int err;
	struct perf_tool *tool = data;

	if (FUNC0(machine))
		return;

	/*
	 *As for guest kernel when processing subcommand record&report,
	 *we arrange module mmap prior to guest kernel mmap and trigger
	 *a preload dso because default guest module symbols are loaded
	 *from guest kallsyms instead of /lib/modules/XXX/XXX. This
	 *method is used to avoid symbol missing when the first addr is
	 *in module instead of in guest kernel.
	 */
	err = FUNC2(tool, process_synthesized_event,
					     machine);
	if (err < 0)
		FUNC3("Couldn't record guest kernel [%d]'s reference"
		       " relocation symbol.\n", machine->pid);

	/*
	 * We use _stext for guest kernel because guest kernel's /proc/kallsyms
	 * have no _text sometimes.
	 */
	err = FUNC1(tool, process_synthesized_event,
						 machine, "_text");
	if (err < 0)
		err = FUNC1(tool, process_synthesized_event,
							 machine, "_stext");
	if (err < 0)
		FUNC3("Couldn't record guest kernel [%d]'s reference"
		       " relocation symbol.\n", machine->pid);
}