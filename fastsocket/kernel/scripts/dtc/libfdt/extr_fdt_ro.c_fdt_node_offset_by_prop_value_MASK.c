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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 void* FUNC1 (void const*,int,char const*,int*) ; 
 int FUNC2 (void const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void const*,void const*,int) ; 

int FUNC4(const void *fdt, int startoffset,
				  const char *propname,
				  const void *propval, int proplen)
{
	int offset;
	const void *val;
	int len;

	FUNC0(fdt);

	/* FIXME: The algorithm here is pretty horrible: we scan each
	 * property of a node in fdt_getprop(), then if that didn't
	 * find what we want, we scan over them again making our way
	 * to the next node.  Still it's the easiest to implement
	 * approach; performance can come later. */
	for (offset = FUNC2(fdt, startoffset, NULL);
	     offset >= 0;
	     offset = FUNC2(fdt, offset, NULL)) {
		val = FUNC1(fdt, offset, propname, &len);
		if (val && (len == proplen)
		    && (FUNC3(val, propval, len) == 0))
			return offset;
	}

	return offset; /* error from fdt_next_node() */
}