#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct machine {TYPE_1__** vmlinux_maps; int /*<<< orphan*/  kmaps; } ;
struct kmap {int /*<<< orphan*/ * kmaps; } ;
struct dso {int dummy; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;
struct TYPE_4__ {int /*<<< orphan*/  unmap_ip; int /*<<< orphan*/  map_ip; } ;

/* Variables and functions */
 int MAP__NR_TYPES ; 
 int /*<<< orphan*/  identity__map_ip ; 
 int /*<<< orphan*/  FUNC0 (struct machine*) ; 
 struct kmap* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,struct dso*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC4(struct machine *machine, struct dso *kernel)
{
	enum map_type type;
	u64 start = FUNC0(machine);

	for (type = 0; type < MAP__NR_TYPES; ++type) {
		struct kmap *kmap;

		machine->vmlinux_maps[type] = FUNC2(start, kernel, type);
		if (machine->vmlinux_maps[type] == NULL)
			return -1;

		machine->vmlinux_maps[type]->map_ip =
			machine->vmlinux_maps[type]->unmap_ip =
				identity__map_ip;
		kmap = FUNC1(machine->vmlinux_maps[type]);
		kmap->kmaps = &machine->kmaps;
		FUNC3(&machine->kmaps,
				   machine->vmlinux_maps[type]);
	}

	return 0;
}