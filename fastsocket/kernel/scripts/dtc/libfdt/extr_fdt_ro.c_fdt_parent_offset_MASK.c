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
 int FUNC0 (void const*,int) ; 
 int FUNC1 (void const*,int,int,int /*<<< orphan*/ *) ; 

int FUNC2(const void *fdt, int nodeoffset)
{
	int nodedepth = FUNC0(fdt, nodeoffset);

	if (nodedepth < 0)
		return nodedepth;
	return FUNC1(fdt, nodeoffset,
					    nodedepth - 1, NULL);
}