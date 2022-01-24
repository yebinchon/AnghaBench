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
struct TYPE_6__ {int /*<<< orphan*/  op_bytes; scalar_t__ op_write; scalar_t__ op_active; } ;
struct TYPE_5__ {int /*<<< orphan*/  op_nents; int /*<<< orphan*/  op_sg; } ;
struct rds_message {TYPE_3__ rdma; TYPE_2__ data; } ;
struct rds_iw_send_work {struct rds_message* s_rm; } ;
struct rds_iw_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_message*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_iw_connection*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct rds_iw_connection*,struct rds_iw_send_work*,struct rds_message*) ; 
 int /*<<< orphan*/  s_recv_rdma_bytes ; 
 int /*<<< orphan*/  s_send_rdma_bytes ; 

__attribute__((used)) static void FUNC7(struct rds_iw_connection *ic,
			  struct rds_iw_send_work *send,
			  int wc_status)
{
	struct rds_message *rm = send->s_rm;

	FUNC6("ic %p send %p rm %p\n", ic, send, rm);

	FUNC0(ic->i_cm_id->device,
		     rm->data.op_sg, rm->data.op_nents,
		     DMA_TO_DEVICE);

	if (rm->rdma.op_active) {
		FUNC2(ic, &rm->rdma);

		/* If the user asked for a completion notification on this
		 * message, we can implement three different semantics:
		 *  1.	Notify when we received the ACK on the RDS message
		 *	that was queued with the RDMA. This provides reliable
		 *	notification of RDMA status at the expense of a one-way
		 *	packet delay.
		 *  2.	Notify when the IB stack gives us the completion event for
		 *	the RDMA operation.
		 *  3.	Notify when the IB stack gives us the completion event for
		 *	the accompanying RDS messages.
		 * Here, we implement approach #3. To implement approach #2,
		 * call rds_rdma_send_complete from the cq_handler. To implement #1,
		 * don't call rds_rdma_send_complete at all, and fall back to the notify
		 * handling in the ACK processing code.
		 *
		 * Note: There's no need to explicitly sync any RDMA buffers using
		 * ib_dma_sync_sg_for_cpu - the completion for the RDMA
		 * operation itself unmapped the RDMA buffers, which takes care
		 * of synching.
		 */
		FUNC1(rm, wc_status);

		if (rm->rdma.op_write)
			FUNC5(s_send_rdma_bytes, rm->rdma.op_bytes);
		else
			FUNC5(s_recv_rdma_bytes, rm->rdma.op_bytes);
	}

	/* If anyone waited for this message to get flushed out, wake
	 * them up now */
	FUNC4(rm);

	FUNC3(rm);
	send->s_rm = NULL;
}