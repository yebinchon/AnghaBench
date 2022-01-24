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
struct fdt_property {int /*<<< orphan*/  data; void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_ERR_NOSPACE ; 
 int FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (void*,char const*) ; 
 struct fdt_property* FUNC3 (void*,scalar_t__) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int) ; 

int FUNC6(void *fdt, const char *name, const void *val, int len)
{
	struct fdt_property *prop;
	int nameoff;

	FUNC0(fdt);

	nameoff = FUNC2(fdt, name);
	if (nameoff == 0)
		return -FDT_ERR_NOSPACE;

	prop = FUNC3(fdt, sizeof(*prop) + FUNC1(len));
	if (! prop)
		return -FDT_ERR_NOSPACE;

	prop->tag = FUNC4(FDT_PROP);
	prop->nameoff = FUNC4(nameoff);
	prop->len = FUNC4(len);
	FUNC5(prop->data, val, len);
	return 0;
}