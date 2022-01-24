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
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct process_kallsyms_args {TYPE_2__* map; TYPE_1__* dso; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {struct rb_root* symbols; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 struct symbol* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_root*,struct symbol*) ; 

__attribute__((used)) static int FUNC4(void *arg, const char *name,
				       char type, u64 start)
{
	struct symbol *sym;
	struct process_kallsyms_args *a = arg;
	struct rb_root *root = &a->dso->symbols[a->map->type];

	if (!FUNC2(type, a->map->type))
		return 0;

	/*
	 * module symbols are not sorted so we add all
	 * symbols, setting length to 0, and rely on
	 * symbols__fixup_end() to fix it up.
	 */
	sym = FUNC1(start, 0, FUNC0(type), name);
	if (sym == NULL)
		return -ENOMEM;
	/*
	 * We will pass the symbols to the filter later, in
	 * map__split_kallsyms, when we have split the maps per module
	 */
	FUNC3(root, sym);

	return 0;
}