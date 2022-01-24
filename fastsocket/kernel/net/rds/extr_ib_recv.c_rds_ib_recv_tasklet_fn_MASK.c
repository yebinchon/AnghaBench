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
struct rds_ib_connection {scalar_t__ i_ack_recv; int /*<<< orphan*/  i_recv_ring; int /*<<< orphan*/  i_recv_cq; struct rds_connection* conn; } ;
struct rds_ib_ack_state {scalar_t__ ack_recv; scalar_t__ ack_recv_valid; int /*<<< orphan*/  ack_required; int /*<<< orphan*/  ack_next; scalar_t__ ack_next_valid; int /*<<< orphan*/  member_0; } ;
struct rds_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_SOLICITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_ib_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_ib_connection*,struct rds_ib_ack_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct rds_connection*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_ib_rx_ring_empty ; 

void FUNC10(unsigned long data)
{
	struct rds_ib_connection *ic = (struct rds_ib_connection *) data;
	struct rds_connection *conn = ic->conn;
	struct rds_ib_ack_state state = { 0, };

	FUNC8(ic, &state);
	FUNC0(ic->i_recv_cq, IB_CQ_SOLICITED);
	FUNC8(ic, &state);

	if (state.ack_next_valid)
		FUNC6(ic, state.ack_next, state.ack_required);
	if (state.ack_recv_valid && state.ack_recv > ic->i_ack_recv) {
		FUNC9(conn, state.ack_recv, NULL);
		ic->i_ack_recv = state.ack_recv;
	}
	if (FUNC1(conn))
		FUNC2(ic);

	/* If we ever end up with a really empty receive ring, we're
	 * in deep trouble, as the sender will definitely see RNR
	 * timeouts. */
	if (FUNC4(&ic->i_recv_ring))
		FUNC7(s_ib_rx_ring_empty);

	if (FUNC5(&ic->i_recv_ring))
		FUNC3(conn, 0);
}