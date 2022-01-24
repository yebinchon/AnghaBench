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
struct sym_entry {TYPE_2__* sym; int /*<<< orphan*/ * name; } ;
struct TYPE_4__ {scalar_t__ st_value; } ;
struct TYPE_3__ {char* t_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 TYPE_1__* nm_print_data ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const void *lp, const void *rp)
{
	const struct sym_entry *l, *r;
	const char *ttable;
	int l_is_undef, r_is_undef;

	l = lp;
	r = rp;

	FUNC1(nm_print_data != NULL);
	ttable = nm_print_data->t_table;

	FUNC1(l != NULL);
	FUNC1(l->name != NULL);
	FUNC1(l->sym != NULL);
	FUNC1(r != NULL);
	FUNC1(r->name != NULL);
	FUNC1(r->sym != NULL);
	FUNC1(ttable != NULL);

	l_is_undef = FUNC0(FUNC2(l->sym, ttable)) ? 1 : 0;
	r_is_undef = FUNC0(FUNC2(r->sym, ttable)) ? 1 : 0;

	FUNC1(l_is_undef + r_is_undef >= 0);
	FUNC1(l_is_undef + r_is_undef <= 2);

	switch (l_is_undef + r_is_undef) {
	case 0:
		/* Both defined */
		if (l->sym->st_value == r->sym->st_value)
			return (FUNC3(l->name, r->name));
		return (l->sym->st_value > r->sym->st_value ? 1 : -1);
	case 1:
		/* One undefined */
		return (l_is_undef == 0 ? 1 : -1);
	case 2:
		/* Both undefined */
		return (FUNC3(l->name, r->name));
	}
	/* NOTREACHED */

	return (l->sym->st_value - r->sym->st_value);
}