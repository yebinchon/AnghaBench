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
struct fdt_reserve_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FDT_ERR_BADLAYOUT ; 
 int FDT_ERR_BADVERSION ; 
 scalar_t__ FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(void *fdt)
{
	FUNC0(fdt);

	if (FUNC4(fdt) < 17)
		return -FDT_ERR_BADVERSION;
	if (FUNC1(fdt, sizeof(struct fdt_reserve_entry),
				   FUNC3(fdt)))
		return -FDT_ERR_BADLAYOUT;
	if (FUNC4(fdt) > 17)
		FUNC2(fdt, 17);

	return 0;
}