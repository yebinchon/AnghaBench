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
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC1(Dwarf_Die *in_die, void *data)
{
	FUNC0(in_die, data);

	/*
	 * We have to check all instances of inlined function, because
	 * some execution paths can be optimized out depends on the
	 * function argument of instances
	 */
	return 0;
}