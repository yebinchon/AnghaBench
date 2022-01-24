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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FDT_END_NODE ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FDT_TAGSIZE ; 
 int /*<<< orphan*/ * FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void *fdt)
{
	uint32_t *en;

	FUNC0(fdt);

	en = FUNC1(fdt, FDT_TAGSIZE);
	if (! en)
		return -FDT_ERR_NOSPACE;

	*en = FUNC2(FDT_END_NODE);
	return 0;
}