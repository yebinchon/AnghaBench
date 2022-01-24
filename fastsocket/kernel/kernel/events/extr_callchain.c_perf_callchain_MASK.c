#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct perf_callchain_entry {scalar_t__ nr; } ;
struct TYPE_3__ {scalar_t__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_CONTEXT_KERNEL ; 
 int /*<<< orphan*/  PERF_CONTEXT_USER ; 
 TYPE_1__* current ; 
 struct perf_callchain_entry* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_callchain_entry*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_callchain_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_callchain_entry*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct pt_regs* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 

struct perf_callchain_entry *FUNC7(struct pt_regs *regs)
{
	int rctx;
	struct perf_callchain_entry *entry;


	entry = FUNC0(&rctx);
	if (rctx == -1)
		return NULL;

	if (!entry)
		goto exit_put;

	entry->nr = 0;

	if (!FUNC6(regs)) {
		FUNC2(entry, PERF_CONTEXT_KERNEL);
		FUNC1(entry, regs);
		if (current->mm)
			regs = FUNC5(current);
		else
			regs = NULL;
	}

	if (regs) {
		FUNC2(entry, PERF_CONTEXT_USER);
		FUNC3(entry, regs);
	}

exit_put:
	FUNC4(rctx);

	return entry;
}