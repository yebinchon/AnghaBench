#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int opcode; } ;
struct rds_iw_send_work {scalar_t__ s_op; scalar_t__ s_rm; TYPE_1__ s_wr; int /*<<< orphan*/  s_page_list; int /*<<< orphan*/  s_mr; } ;
struct TYPE_4__ {scalar_t__ w_nr; } ;
struct rds_iw_connection {TYPE_2__ i_send_ring; struct rds_iw_send_work* i_sends; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_iw_connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_iw_connection*,struct rds_iw_send_work*,int /*<<< orphan*/ ) ; 

void FUNC5(struct rds_iw_connection *ic)
{
	struct rds_iw_send_work *send;
	u32 i;

	for (i = 0, send = ic->i_sends; i < ic->i_send_ring.w_nr; i++, send++) {
		FUNC0(!send->s_mr);
		FUNC1(send->s_mr);
		FUNC0(!send->s_page_list);
		FUNC2(send->s_page_list);
		if (send->s_wr.opcode == 0xdead)
			continue;
		if (send->s_rm)
			FUNC4(ic, send, IB_WC_WR_FLUSH_ERR);
		if (send->s_op)
			FUNC3(ic, send->s_op);
	}
}