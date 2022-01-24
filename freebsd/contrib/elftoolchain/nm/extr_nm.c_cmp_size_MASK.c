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
struct sym_entry {TYPE_1__* sym; int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {scalar_t__ st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const void *lp, const void *rp)
{
	const struct sym_entry *l, *r;

	l = lp;
	r = rp;

	FUNC0(l != NULL);
	FUNC0(l->name != NULL);
	FUNC0(l->sym != NULL);
	FUNC0(r != NULL);
	FUNC0(r->name != NULL);
	FUNC0(r->sym != NULL);

	if (l->sym->st_size == r->sym->st_size)
		return (FUNC1(l->name, r->name));

	return (l->sym->st_size - r->sym->st_size);
}