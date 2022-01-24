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
struct fdt_property {void const* data; } ;

/* Variables and functions */
 struct fdt_property* FUNC0 (void const*,int,char const*,int,int*) ; 

const void *FUNC1(const void *fdt, int nodeoffset,
				const char *name, int namelen, int *lenp)
{
	const struct fdt_property *prop;

	prop = FUNC0(fdt, nodeoffset, name, namelen, lenp);
	if (! prop)
		return NULL;

	return prop->data;
}