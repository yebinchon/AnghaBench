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
struct map_symbol {TYPE_4__* map; struct symbol* sym; } ;
struct hist_browser_timer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_1__ target; } ;
struct disasm_line {TYPE_2__ ops; int /*<<< orphan*/  ins; } ;
struct annotation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * src; } ;
struct TYPE_9__ {struct map_symbol* priv; } ;
struct annotate_browser {TYPE_3__ b; struct disasm_line* selection; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* map_ip ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 struct annotation* FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*,TYPE_4__*,int,struct hist_browser_timer*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool FUNC11(struct annotate_browser *browser, int evidx,
				    struct hist_browser_timer *hbt)
{
	struct map_symbol *ms = browser->b.priv;
	struct disasm_line *dl = browser->selection;
	struct symbol *sym = ms->sym;
	struct annotation *notes;
	struct symbol *target;
	u64 ip;

	if (!FUNC0(dl->ins))
		return false;

	ip = ms->map->map_ip(ms->map, dl->ops.target.addr);
	target = FUNC1(ms->map, ip, NULL);
	if (target == NULL) {
		FUNC10("The called function was not found.");
		return true;
	}

	notes = FUNC6(target);
	FUNC2(&notes->lock);

	if (notes->src == NULL && FUNC5(target) < 0) {
		FUNC3(&notes->lock);
		FUNC8("Not enough memory for annotating '%s' symbol!\n",
			    target->name);
		return true;
	}

	FUNC3(&notes->lock);
	FUNC7(target, ms->map, evidx, hbt);
	FUNC9(&browser->b, sym->name);
	return true;
}