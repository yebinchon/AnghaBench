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
struct dso {int /*<<< orphan*/  node; int /*<<< orphan*/  needs_swap; int /*<<< orphan*/  kernel; scalar_t__ has_build_id; scalar_t__ sorted_by_name; scalar_t__ loaded; void* data_type; void* symtab_type; void* cache; void** symbol_names; void** symbols; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* DSO_BINARY_TYPE__NOT_FOUND ; 
 int /*<<< orphan*/  DSO_SWAP__UNSET ; 
 int /*<<< orphan*/  DSO_TYPE_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAP__NR_TYPES ; 
 void* RB_ROOT ; 
 struct dso* FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

struct dso *FUNC6(const char *name)
{
	struct dso *dso = FUNC1(1, sizeof(*dso) + FUNC5(name) + 1);

	if (dso != NULL) {
		int i;
		FUNC4(dso->name, name);
		FUNC2(dso, dso->name);
		FUNC3(dso, dso->name);
		for (i = 0; i < MAP__NR_TYPES; ++i)
			dso->symbols[i] = dso->symbol_names[i] = RB_ROOT;
		dso->cache = RB_ROOT;
		dso->symtab_type = DSO_BINARY_TYPE__NOT_FOUND;
		dso->data_type   = DSO_BINARY_TYPE__NOT_FOUND;
		dso->loaded = 0;
		dso->sorted_by_name = 0;
		dso->has_build_id = 0;
		dso->kernel = DSO_TYPE_USER;
		dso->needs_swap = DSO_SWAP__UNSET;
		FUNC0(&dso->node);
	}

	return dso;
}