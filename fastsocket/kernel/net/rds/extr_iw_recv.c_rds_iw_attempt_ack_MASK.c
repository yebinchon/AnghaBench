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
struct rds_iw_connection {int /*<<< orphan*/  i_ack_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACK_IN_FLIGHT ; 
 int /*<<< orphan*/  IB_ACK_REQUESTED ; 
 int /*<<< orphan*/  RDS_MAX_ADV_CREDIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_iw_connection*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_iw_connection*,int,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_iw_ack_send_delayed ; 
 int /*<<< orphan*/  s_iw_tx_throttle ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct rds_iw_connection *ic)
{
	unsigned int adv_credits;

	if (!FUNC5(IB_ACK_REQUESTED, &ic->i_ack_flags))
		return;

	if (FUNC4(IB_ACK_IN_FLIGHT, &ic->i_ack_flags)) {
		FUNC3(s_iw_ack_send_delayed);
		return;
	}

	/* Can we get a send credit? */
	if (!FUNC2(ic, 1, &adv_credits, 0, RDS_MAX_ADV_CREDIT)) {
		FUNC3(s_iw_tx_throttle);
		FUNC0(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
		return;
	}

	FUNC0(IB_ACK_REQUESTED, &ic->i_ack_flags);
	FUNC1(ic, adv_credits);
}