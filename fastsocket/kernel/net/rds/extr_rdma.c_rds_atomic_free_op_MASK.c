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
struct rm_atomic_op {scalar_t__ op_active; int /*<<< orphan*/ * op_notifier; int /*<<< orphan*/  op_sg; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct rm_atomic_op *ao)
{
	struct page *page = FUNC3(ao->op_sg);

	/* Mark page dirty if it was possibly modified, which
	 * is the case for a RDMA_READ which copies from remote
	 * to local memory */
	FUNC2(page);
	FUNC1(page);

	FUNC0(ao->op_notifier);
	ao->op_notifier = NULL;
	ao->op_active = 0;
}