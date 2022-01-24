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
struct symbol {int /*<<< orphan*/  name; } ;
struct perf_top {struct hist_entry* sym_filter_entry; } ;
struct map {TYPE_2__* dso; } ;
struct TYPE_3__ {struct map* map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct annotation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * src; } ;
struct TYPE_4__ {scalar_t__ symtab_type; } ;

/* Variables and functions */
 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct symbol*) ; 
 int FUNC5 (struct symbol*,struct map*,int /*<<< orphan*/ ) ; 
 struct annotation* FUNC6 (struct symbol*) ; 

__attribute__((used)) static int FUNC7(struct perf_top *top, struct hist_entry *he)
{
	struct symbol *sym;
	struct annotation *notes;
	struct map *map;
	int err = -1;

	if (!he || !he->ms.sym)
		return -1;

	sym = he->ms.sym;
	map = he->ms.map;

	/*
	 * We can't annotate with just /proc/kallsyms
	 */
	if (map->dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS) {
		FUNC0("Can't annotate %s: No vmlinux file was found in the "
		       "path\n", sym->name);
		FUNC3(1);
		return -1;
	}

	notes = FUNC6(sym);
	if (notes->src != NULL) {
		FUNC1(&notes->lock);
		goto out_assign;
	}

	FUNC1(&notes->lock);

	if (FUNC4(sym) < 0) {
		FUNC2(&notes->lock);
		FUNC0("Not enough memory for annotating '%s' symbol!\n",
		       sym->name);
		FUNC3(1);
		return err;
	}

	err = FUNC5(sym, map, 0);
	if (err == 0) {
out_assign:
		top->sym_filter_entry = he;
	}

	FUNC2(&notes->lock);
	return err;
}