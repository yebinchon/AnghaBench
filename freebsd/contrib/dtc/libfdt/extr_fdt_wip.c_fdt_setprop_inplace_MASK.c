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
 int FDT_ERR_NOSPACE ; 
 void* FUNC0 (void*,int,char const*,int*) ; 
 int FUNC1 (void*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(void *fdt, int nodeoffset, const char *name,
			const void *val, int len)
{
	const void *propval;
	int proplen;

	propval = FUNC0(fdt, nodeoffset, name, &proplen);
	if (! propval)
		return proplen;

	if (proplen != len)
		return -FDT_ERR_NOSPACE;

	return FUNC1(fdt, nodeoffset, name,
						   FUNC2(name), 0,
						   val, len);
}