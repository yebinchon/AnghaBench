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
struct sock {int dummy; } ;
struct l2cap_disconn_rsp {int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_list; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  monitor_timer; int /*<<< orphan*/  retrans_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC11(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_disconn_rsp *rsp = (struct l2cap_disconn_rsp *) data;
	u16 dcid, scid;
	struct sock *sk;

	scid = FUNC3(rsp->scid);
	dcid = FUNC3(rsp->dcid);

	FUNC0("dcid 0x%4.4x scid 0x%4.4x", dcid, scid);

	sk = FUNC7(&conn->chan_list, scid);
	if (!sk)
		return 0;

	FUNC10(FUNC2(sk));
	FUNC10(FUNC1(sk));
	FUNC5(&FUNC8(sk)->retrans_timer);
	FUNC5(&FUNC8(sk)->monitor_timer);

	FUNC6(sk, 0);
	FUNC4(sk);

	FUNC9(sk);
	return 0;
}