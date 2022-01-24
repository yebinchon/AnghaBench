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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  target ;
struct symbol {int /*<<< orphan*/  rb_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  top_idx; int /*<<< orphan*/  index; int /*<<< orphan*/ * top; } ;
struct map_browser {TYPE_1__ b; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct symbol*) ; 
 char FUNC4 (char) ; 
 int FUNC5 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct map_browser *self)
{
	char target[512];
	struct symbol *sym;
	int err = FUNC5("Search by name/addr", target, sizeof(target), 40);

	if (err)
		return err;

	if (target[0] == '0' && FUNC4(target[1]) == 'x') {
		u64 addr = FUNC2(target, NULL, 16);
		sym = FUNC0(self->map, addr, NULL);
	} else
		sym = FUNC1(self->map, target, NULL);

	if (sym != NULL) {
		u32 *idx = FUNC3(sym);

		self->b.top = &sym->rb_node;
		self->b.index = self->b.top_idx = *idx;
	} else
		FUNC6("%s not found!", target);

	return 0;
}