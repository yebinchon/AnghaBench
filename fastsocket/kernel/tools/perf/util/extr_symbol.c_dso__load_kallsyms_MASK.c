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
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct map {size_t type; } ;
struct dso {scalar_t__ kernel; int /*<<< orphan*/  symtab_type; int /*<<< orphan*/ * symbols; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_BINARY_TYPE__GUEST_KALLSYMS ; 
 int /*<<< orphan*/  DSO_BINARY_TYPE__KALLSYMS ; 
 scalar_t__ DSO_TYPE_GUEST_KERNEL ; 
 scalar_t__ FUNC0 (struct dso*,char const*,struct map*) ; 
 int FUNC1 (struct dso*,struct map*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dso *dso, const char *filename,
		       struct map *map, symbol_filter_t filter)
{
	if (FUNC2(filename, "/proc/kallsyms"))
		return -1;

	if (FUNC0(dso, filename, map) < 0)
		return -1;

	FUNC3(&dso->symbols[map->type]);
	FUNC4(&dso->symbols[map->type]);

	if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
		dso->symtab_type = DSO_BINARY_TYPE__GUEST_KALLSYMS;
	else
		dso->symtab_type = DSO_BINARY_TYPE__KALLSYMS;

	return FUNC1(dso, map, filter);
}