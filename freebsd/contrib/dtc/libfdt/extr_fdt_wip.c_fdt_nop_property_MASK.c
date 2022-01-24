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
struct fdt_property {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fdt_property*,int) ; 
 struct fdt_property* FUNC1 (void*,int,char const*,int*) ; 

int FUNC2(void *fdt, int nodeoffset, const char *name)
{
	struct fdt_property *prop;
	int len;

	prop = FUNC1(fdt, nodeoffset, name, &len);
	if (! prop)
		return len;

	FUNC0(prop, len + sizeof(*prop));

	return 0;
}