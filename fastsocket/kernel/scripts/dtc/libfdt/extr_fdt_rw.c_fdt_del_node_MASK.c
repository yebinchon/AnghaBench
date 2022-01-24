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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(void *fdt, int nodeoffset)
{
	int endoffset;

	FUNC0(fdt);

	endoffset = FUNC1(fdt, nodeoffset);
	if (endoffset < 0)
		return endoffset;

	return FUNC3(fdt, FUNC2(fdt, nodeoffset),
				  endoffset - nodeoffset, 0);
}