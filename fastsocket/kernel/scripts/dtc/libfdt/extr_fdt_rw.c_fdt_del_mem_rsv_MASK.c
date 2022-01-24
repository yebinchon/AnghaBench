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
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct fdt_reserve_entry* FUNC1 (void*,int) ; 
 int FUNC2 (void*,struct fdt_reserve_entry*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 

int FUNC4(void *fdt, int n)
{
	struct fdt_reserve_entry *re = FUNC1(fdt, n);
	int err;

	FUNC0(fdt);

	if (n >= FUNC3(fdt))
		return -FDT_ERR_NOTFOUND;

	err = FUNC2(fdt, re, 1, 0);
	if (err)
		return err;
	return 0;
}