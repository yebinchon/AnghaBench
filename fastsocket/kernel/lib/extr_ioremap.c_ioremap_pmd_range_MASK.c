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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(pud_t *pud, unsigned long addr,
		unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
	pmd_t *pmd;
	unsigned long next;

	phys_addr -= addr;
	pmd = FUNC2(&init_mm, pud, addr);
	if (!pmd)
		return -ENOMEM;
	do {
		next = FUNC1(addr, end);
		if (FUNC0(pmd, addr, next, phys_addr + addr, prot))
			return -ENOMEM;
	} while (pmd++, addr = next, addr != end);
	return 0;
}