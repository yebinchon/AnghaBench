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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_fn_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 

int FUNC6(struct mm_struct *mm, unsigned long addr,
			unsigned long size, pte_fn_t fn, void *data)
{
	pgd_t *pgd;
	unsigned long next;
	unsigned long start = addr, end = addr + size;
	int err;

	FUNC0(addr >= end);
	FUNC3(mm, start, end);
	pgd = FUNC5(mm, addr);
	do {
		next = FUNC4(addr, end);
		err = FUNC1(mm, pgd, addr, next, fn, data);
		if (err)
			break;
	} while (pgd++, addr = next, addr != end);
	FUNC2(mm, start, end);
	return err;
}