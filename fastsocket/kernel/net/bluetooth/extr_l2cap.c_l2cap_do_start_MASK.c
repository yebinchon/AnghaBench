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
struct sock {int dummy; } ;
struct l2cap_info_req {void* type; int /*<<< orphan*/  psm; void* scid; } ;
struct l2cap_conn_req {void* type; int /*<<< orphan*/  psm; void* scid; } ;
struct l2cap_conn {int info_state; void* info_ident; int /*<<< orphan*/  info_timer; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {void* ident; int /*<<< orphan*/  psm; int /*<<< orphan*/  scid; struct l2cap_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_CONN_REQ ; 
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ; 
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ; 
 int /*<<< orphan*/  L2CAP_INFO_REQ ; 
 int /*<<< orphan*/  L2CAP_INFO_TIMEOUT ; 
 int /*<<< orphan*/  L2CAP_IT_FEAT_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 void* FUNC2 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,void*,int /*<<< orphan*/ ,int,struct l2cap_info_req*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct l2cap_conn *conn = FUNC3(sk)->conn;

	if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT) {
		if (!(conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE))
			return;

		if (FUNC1(sk)) {
			struct l2cap_conn_req req;
			req.scid = FUNC0(FUNC3(sk)->scid);
			req.psm  = FUNC3(sk)->psm;

			FUNC3(sk)->ident = FUNC2(conn);

			FUNC4(conn, FUNC3(sk)->ident,
					L2CAP_CONN_REQ, sizeof(req), &req);
		}
	} else {
		struct l2cap_info_req req;
		req.type = FUNC0(L2CAP_IT_FEAT_MASK);

		conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_SENT;
		conn->info_ident = FUNC2(conn);

		FUNC5(&conn->info_timer, jiffies +
					FUNC6(L2CAP_INFO_TIMEOUT));

		FUNC4(conn, conn->info_ident,
					L2CAP_INFO_REQ, sizeof(req), &req);
	}
}