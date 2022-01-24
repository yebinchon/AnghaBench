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
struct xen_bus_type {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int FUNC4 (struct xen_bus_type*,char*) ; 

int FUNC5(struct xen_bus_type *bus)
{
	int err = 0;
	char **dir;
	unsigned int i, dir_n;

	dir = FUNC3(XBT_NIL, bus->root, "", &dir_n);
	if (FUNC0(dir))
		return FUNC1(dir);

	for (i = 0; i < dir_n; i++) {
		err = FUNC4(bus, dir[i]);
		if (err)
			break;
	}
	FUNC2(dir);
	return err;
}