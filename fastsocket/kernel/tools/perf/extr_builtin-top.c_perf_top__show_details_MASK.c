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
struct symbol {char* name; } ;
struct perf_top {int sym_pcnt_filter; TYPE_2__* sym_evsel; scalar_t__ zero; int /*<<< orphan*/  print_entries; struct hist_entry* sym_filter_entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct annotation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * src; } ;
struct TYPE_4__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct symbol*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct annotation* FUNC7 (struct symbol*) ; 

__attribute__((used)) static void FUNC8(struct perf_top *top)
{
	struct hist_entry *he = top->sym_filter_entry;
	struct annotation *notes;
	struct symbol *symbol;
	int more;

	if (!he)
		return;

	symbol = he->ms.sym;
	notes = FUNC7(symbol);

	FUNC2(&notes->lock);

	if (notes->src == NULL)
		goto out_unlock;

	FUNC1("Showing %s for %s\n", FUNC0(top->sym_evsel), symbol->name);
	FUNC1("  Events  Pcnt (>=%d%%)\n", top->sym_pcnt_filter);

	more = FUNC5(symbol, he->ms.map, top->sym_evsel->idx,
				       0, top->sym_pcnt_filter, top->print_entries, 4);
	if (top->zero)
		FUNC6(symbol, top->sym_evsel->idx);
	else
		FUNC4(symbol, top->sym_evsel->idx);
	if (more != 0)
		FUNC1("%d lines not displayed, maybe increase display entries [e]\n", more);
out_unlock:
	FUNC3(&notes->lock);
}