#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rds_iw_recv_work {int dummy; } ;
struct rds_iw_connection {int /*<<< orphan*/  i_recv_ring; struct rds_iw_recv_work* i_recvs; int /*<<< orphan*/  i_recv_cq; struct rds_connection* conn; } ;
struct rds_iw_ack_state {int dummy; } ;
struct rds_connection {int /*<<< orphan*/  c_faddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  byte_len; TYPE_1__ ex; scalar_t__ wr_id; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,struct ib_wc*) ; 
 scalar_t__ FUNC2 (struct rds_connection*) ; 
 scalar_t__ FUNC3 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_connection*,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_connection*,struct rds_iw_recv_work*,int /*<<< orphan*/ ,struct rds_iw_ack_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_iw_connection*,struct rds_iw_recv_work*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long long,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_iw_rx_cq_event ; 

__attribute__((used)) static inline void FUNC11(struct rds_iw_connection *ic,
			       struct rds_iw_ack_state *state)
{
	struct rds_connection *conn = ic->conn;
	struct ib_wc wc;
	struct rds_iw_recv_work *recv;

	while (FUNC1(ic->i_recv_cq, 1, &wc) > 0) {
		FUNC10("wc wr_id 0x%llx status %u byte_len %u imm_data %u\n",
			 (unsigned long long)wc.wr_id, wc.status, wc.byte_len,
			 FUNC0(wc.ex.imm_data));
		FUNC9(s_iw_rx_cq_event);

		recv = &ic->i_recvs[FUNC8(&ic->i_recv_ring)];

		FUNC6(ic, recv);

		/*
		 * Also process recvs in connecting state because it is possible
		 * to get a recv completion _before_ the rdmacm ESTABLISHED
		 * event is processed.
		 */
		if (FUNC3(conn) || FUNC2(conn)) {
			/* We expect errors as the qp is drained during shutdown */
			if (wc.status == IB_WC_SUCCESS) {
				FUNC5(conn, recv, wc.byte_len, state);
			} else {
				FUNC4(conn, "recv completion on "
				       "%pI4 had status %u, disconnecting and "
				       "reconnecting\n", &conn->c_faddr,
				       wc.status);
			}
		}

		FUNC7(&ic->i_recv_ring, 1);
	}
}