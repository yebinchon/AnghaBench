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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct mm_struct *mm, pud_t *pud,
			unsigned long addr, unsigned long end,
			unsigned long pfn, pgprot_t prot)
{
	pmd_t *pmd;
	unsigned long next;

	pfn -= addr >> PAGE_SHIFT;
	pmd = FUNC2(mm, pud, addr);
	if (!pmd)
		return -ENOMEM;
	FUNC0(FUNC3(*pmd));
	do {
		next = FUNC1(addr, end);
		if (FUNC4(mm, pmd, addr, next,
				pfn + (addr >> PAGE_SHIFT), prot))
			return -ENOMEM;
	} while (pmd++, addr = next, addr != end);
	return 0;
}