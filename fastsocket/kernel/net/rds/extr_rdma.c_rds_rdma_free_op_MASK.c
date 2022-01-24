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
struct rm_rdma_op {unsigned int op_nents; scalar_t__ op_active; int /*<<< orphan*/ * op_notifier; int /*<<< orphan*/  op_write; int /*<<< orphan*/ * op_sg; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rm_rdma_op *ro)
{
	unsigned int i;

	for (i = 0; i < ro->op_nents; i++) {
		struct page *page = FUNC5(&ro->op_sg[i]);

		/* Mark page dirty if it was possibly modified, which
		 * is the case for a RDMA_READ which copies from remote
		 * to local memory */
		if (!ro->op_write) {
			FUNC0(FUNC1());
			FUNC4(page);
		}
		FUNC3(page);
	}

	FUNC2(ro->op_notifier);
	ro->op_notifier = NULL;
	ro->op_active = 0;
}