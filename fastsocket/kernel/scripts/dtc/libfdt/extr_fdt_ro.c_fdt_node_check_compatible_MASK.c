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
 scalar_t__ FUNC0 (void const*,int,char const*) ; 
 void* FUNC1 (void const*,int,char*,int*) ; 

int FUNC2(const void *fdt, int nodeoffset,
			      const char *compatible)
{
	const void *prop;
	int len;

	prop = FUNC1(fdt, nodeoffset, "compatible", &len);
	if (!prop)
		return len;
	if (FUNC0(prop, len, compatible))
		return 0;
	else
		return 1;
}