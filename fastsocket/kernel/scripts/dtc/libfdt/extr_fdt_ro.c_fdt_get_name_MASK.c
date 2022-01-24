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
struct fdt_node_header {char const* name; } ;

/* Variables and functions */
 int FUNC0 (void const*,int) ; 
 struct fdt_node_header* FUNC1 (void const*,int) ; 
 int FUNC2 (void const*) ; 
 int FUNC3 (char const*) ; 

const char *FUNC4(const void *fdt, int nodeoffset, int *len)
{
	const struct fdt_node_header *nh = FUNC1(fdt, nodeoffset);
	int err;

	if (((err = FUNC2(fdt)) != 0)
	    || ((err = FUNC0(fdt, nodeoffset)) < 0))
			goto fail;

	if (len)
		*len = FUNC3(nh->name);

	return nh->name;

 fail:
	if (len)
		*len = err;
	return NULL;
}