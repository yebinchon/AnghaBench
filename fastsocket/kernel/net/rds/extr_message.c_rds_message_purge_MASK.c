#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_5__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_4__ {unsigned long op_nents; int /*<<< orphan*/ * op_sg; } ;
struct rds_message {TYPE_3__ atomic; TYPE_2__ rdma; TYPE_1__ data; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_MSG_PAGEVEC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rds_message *rm)
{
	unsigned long i;

	if (FUNC7(FUNC6(RDS_MSG_PAGEVEC, &rm->m_flags)))
		return;

	for (i = 0; i < rm->data.op_nents; i++) {
		FUNC4("putting data page %p\n", (void *)FUNC5(&rm->data.op_sg[i]));
		/* XXX will have to put_page for page refs */
		FUNC0(FUNC5(&rm->data.op_sg[i]));
	}
	rm->data.op_nents = 0;

	if (rm->rdma.op_active)
		FUNC3(&rm->rdma);
	if (rm->rdma.op_rdma_mr)
		FUNC2(rm->rdma.op_rdma_mr);

	if (rm->atomic.op_active)
		FUNC1(&rm->atomic);
	if (rm->atomic.op_rdma_mr)
		FUNC2(rm->atomic.op_rdma_mr);
}