#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_4__ {unsigned long buf; } ;
struct TYPE_5__ {unsigned long count; unsigned long written; TYPE_1__ arg; int /*<<< orphan*/  error; } ;
typedef  TYPE_2__ read_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long FUNC0 (unsigned long,char*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 char* FUNC3 (struct page*) ; 
 char* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(read_descriptor_t *desc, struct page *page,
			unsigned long offset, unsigned long size)
{
	char *kaddr;
	unsigned long left, count = desc->count;

	if (size > count)
		size = count;

	/*
	 * Faults on the destination of a read are common, so do it before
	 * taking the kmap.
	 */
	if (!FUNC2(desc->arg.buf, size)) {
		kaddr = FUNC4(page, KM_USER0);
		left = FUNC1(desc->arg.buf,
						kaddr + offset, size);
		FUNC6(kaddr, KM_USER0);
		if (left == 0)
			goto success;
	}

	/* Do it the slow way */
	kaddr = FUNC3(page);
	left = FUNC0(desc->arg.buf, kaddr + offset, size);
	FUNC5(page);

	if (left) {
		size -= left;
		desc->error = -EFAULT;
	}
success:
	desc->count = count - size;
	desc->written += size;
	desc->arg.buf += size;
	return size;
}