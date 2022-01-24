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
 int FDT_ERR_NOSPACE ; 
 int FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 

int FUNC3(const void *fdt, void *buf, int bufsize)
{
	FUNC0(fdt);

	if (FUNC1(fdt) > bufsize)
		return -FDT_ERR_NOSPACE;

	FUNC2(buf, fdt, FUNC1(fdt));
	return 0;
}