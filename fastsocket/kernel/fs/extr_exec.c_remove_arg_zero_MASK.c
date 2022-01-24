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
struct page {int dummy; } ;
struct linux_binprm {unsigned long p; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct linux_binprm*,int) ; 
 struct page* FUNC1 (struct linux_binprm*,unsigned long,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(struct linux_binprm *bprm)
{
	int ret = 0;
	unsigned long offset;
	char *kaddr;
	struct page *page;

	if (!bprm->argc)
		return 0;

	do {
		offset = bprm->p & ~PAGE_MASK;
		page = FUNC1(bprm, bprm->p, 0);
		if (!page) {
			ret = -EFAULT;
			goto out;
		}
		kaddr = FUNC2(page, KM_USER0);

		for (; offset < PAGE_SIZE && kaddr[offset];
				offset++, bprm->p++)
			;

		FUNC3(kaddr, KM_USER0);
		FUNC4(page);

		if (offset == PAGE_SIZE)
			FUNC0(bprm, (bprm->p >> PAGE_SHIFT) - 1);
	} while (offset == PAGE_SIZE);

	bprm->p++;
	bprm->argc--;
	ret = 0;

out:
	return ret;
}