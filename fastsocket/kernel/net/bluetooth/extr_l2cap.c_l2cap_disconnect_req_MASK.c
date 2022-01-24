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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int /*<<< orphan*/  sk_shutdown; } ;
struct l2cap_disconn_rsp {void* scid; void* dcid; } ;
struct l2cap_disconn_req {int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_list; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_2__ {int /*<<< orphan*/  monitor_timer; int /*<<< orphan*/  retrans_timer; int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  L2CAP_DISCONN_RSP ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_disconn_rsp*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC13(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_disconn_req *req = (struct l2cap_disconn_req *) data;
	struct l2cap_disconn_rsp rsp;
	u16 dcid, scid;
	struct sock *sk;

	scid = FUNC3(req->scid);
	dcid = FUNC3(req->dcid);

	FUNC0("scid 0x%4.4x dcid 0x%4.4x", scid, dcid);

	sk = FUNC8(&conn->chan_list, dcid);
	if (!sk)
		return 0;

	rsp.dcid = FUNC5(FUNC9(sk)->scid);
	rsp.scid = FUNC5(FUNC9(sk)->dcid);
	FUNC10(conn, cmd->ident, L2CAP_DISCONN_RSP, sizeof(rsp), &rsp);

	sk->sk_shutdown = SHUTDOWN_MASK;

	FUNC12(FUNC2(sk));
	FUNC12(FUNC1(sk));
	FUNC6(&FUNC9(sk)->retrans_timer);
	FUNC6(&FUNC9(sk)->monitor_timer);

	FUNC7(sk, ECONNRESET);
	FUNC4(sk);

	FUNC11(sk);
	return 0;
}