#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symbol {char* name; } ;
struct perf_top {int delay_secs; int print_entries; int count_filter; int sym_pcnt_filter; scalar_t__ zero; scalar_t__ hide_user_symbols; scalar_t__ hide_kernel_symbols; int /*<<< orphan*/  sym_evsel; TYPE_3__* evlist; TYPE_2__* sym_filter_entry; } ;
struct TYPE_6__ {int nr_entries; } ;
struct TYPE_4__ {struct symbol* sym; } ;
struct TYPE_5__ {TYPE_1__ ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(struct perf_top *top)
{
	char *name = NULL;

	if (top->sym_filter_entry) {
		struct symbol *sym = top->sym_filter_entry->ms.sym;
		name = sym->name;
	}

	FUNC0(stdout, "\nMapped keys:\n");
	FUNC0(stdout, "\t[d]     display refresh delay.             \t(%d)\n", top->delay_secs);
	FUNC0(stdout, "\t[e]     display entries (lines).           \t(%d)\n", top->print_entries);

	if (top->evlist->nr_entries > 1)
		FUNC0(stdout, "\t[E]     active event counter.              \t(%s)\n", FUNC1(top->sym_evsel));

	FUNC0(stdout, "\t[f]     profile display filter (count).    \t(%d)\n", top->count_filter);

	FUNC0(stdout, "\t[F]     annotate display filter (percent). \t(%d%%)\n", top->sym_pcnt_filter);
	FUNC0(stdout, "\t[s]     annotate symbol.                   \t(%s)\n", name?: "NULL");
	FUNC0(stdout, "\t[S]     stop annotation.\n");

	FUNC0(stdout,
		"\t[K]     hide kernel_symbols symbols.     \t(%s)\n",
		top->hide_kernel_symbols ? "yes" : "no");
	FUNC0(stdout,
		"\t[U]     hide user symbols.               \t(%s)\n",
		top->hide_user_symbols ? "yes" : "no");
	FUNC0(stdout, "\t[z]     toggle sample zeroing.             \t(%d)\n", top->zero ? 1 : 0);
	FUNC0(stdout, "\t[qQ]    quit.\n");
}