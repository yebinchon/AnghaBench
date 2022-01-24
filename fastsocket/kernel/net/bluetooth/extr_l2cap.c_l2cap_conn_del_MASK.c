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
struct TYPE_2__ {struct sock* head; } ;
struct l2cap_conn {int info_state; int /*<<< orphan*/  info_timer; TYPE_1__ chan_list; int /*<<< orphan*/  rx_skb; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct l2cap_conn*,int) ; 
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct hci_conn *hcon, int err)
{
	struct l2cap_conn *conn = hcon->l2cap_data;
	struct sock *sk;

	if (!conn)
		return;

	FUNC0("hcon %p conn %p, err %d", hcon, conn, err);

	FUNC5(conn->rx_skb);

	/* Kill channels */
	while ((sk = conn->chan_list.head)) {
		FUNC1(sk);
		FUNC6(sk, err);
		FUNC2(sk);
		FUNC7(sk);
	}

	if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)
		FUNC3(&conn->info_timer);

	hcon->l2cap_data = NULL;
	FUNC4(conn);
}