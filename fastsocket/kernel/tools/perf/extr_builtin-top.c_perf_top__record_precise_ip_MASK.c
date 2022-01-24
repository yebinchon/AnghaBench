#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int /*<<< orphan*/  name; } ;
struct perf_top {TYPE_2__* sym_filter_entry; } ;
struct TYPE_9__ {TYPE_4__* map; struct symbol* sym; } ;
struct hist_entry {TYPE_3__ ms; } ;
struct annotation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * src; } ;
struct TYPE_10__ {int /*<<< orphan*/  erange_warned; int /*<<< orphan*/  (* map_ip ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {struct symbol* sym; } ;
struct TYPE_8__ {TYPE_1__ ms; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 struct annotation* FUNC6 (struct symbol*) ; 
 int FUNC7 (struct symbol*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct symbol*,int /*<<< orphan*/ ) ; 
 int use_browser ; 

__attribute__((used)) static void FUNC9(struct perf_top *top,
					struct hist_entry *he,
					int counter, u64 ip)
{
	struct annotation *notes;
	struct symbol *sym;
	int err;

	if (he == NULL || he->ms.sym == NULL ||
	    ((top->sym_filter_entry == NULL ||
	      top->sym_filter_entry->ms.sym != he->ms.sym) && use_browser != 1))
		return;

	sym = he->ms.sym;
	notes = FUNC6(sym);

	if (FUNC1(&notes->lock))
		return;

	if (notes->src == NULL && FUNC5(sym) < 0) {
		FUNC2(&notes->lock);
		FUNC0("Not enough memory for annotating '%s' symbol!\n",
		       sym->name);
		FUNC3(1);
		return;
	}

	ip = he->ms.map->map_ip(he->ms.map, ip);
	err = FUNC7(sym, he->ms.map, counter, ip);

	FUNC2(&notes->lock);

	if (err == -ERANGE && !he->ms.map->erange_warned)
		FUNC8(he->ms.map, sym, ip);
}