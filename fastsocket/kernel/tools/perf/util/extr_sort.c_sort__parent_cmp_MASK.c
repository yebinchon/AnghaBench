#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symbol {int /*<<< orphan*/  name; } ;
struct hist_entry {struct symbol* parent; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t
FUNC2(struct hist_entry *left, struct hist_entry *right)
{
	struct symbol *sym_l = left->parent;
	struct symbol *sym_r = right->parent;

	if (!sym_l || !sym_r)
		return FUNC0(sym_l, sym_r);

	return FUNC1(sym_l->name, sym_r->name);
}