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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int FDT_ERR_BADPHANDLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (void const*,int,char*,int*,int) ; 

int FUNC2(const void *fdt, uint32_t phandle)
{
	if ((phandle == 0) || (phandle == -1))
		return -FDT_ERR_BADPHANDLE;
	phandle = FUNC0(phandle);
	return FUNC1(fdt, -1, "linux,phandle",
					     &phandle, sizeof(phandle));
}