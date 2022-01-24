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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_sync_conn_complete {int status; scalar_t__ link_type; int /*<<< orphan*/  handle; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int esco_type; int /*<<< orphan*/  name; } ;
struct hci_conn {int attempt; int pkt_type; int /*<<< orphan*/  state; TYPE_1__* link; int /*<<< orphan*/  out; int /*<<< orphan*/  handle; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int EDR_ESCO_MASK ; 
 scalar_t__ ESCO_LINK ; 
 int SCO_ESCO_MASK ; 
 int /*<<< orphan*/  SCO_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_sync_conn_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status %d", hdev->name, ev->status);

	FUNC6(hdev);

	conn = FUNC4(hdev, ev->link_type, &ev->bdaddr);
	if (!conn) {
		if (ev->link_type == ESCO_LINK)
			goto unlock;

		conn = FUNC4(hdev, ESCO_LINK, &ev->bdaddr);
		if (!conn)
			goto unlock;

		conn->type = SCO_LINK;
	}

	switch (ev->status) {
	case 0x00:
		conn->handle = FUNC1(ev->handle);
		conn->state  = BT_CONNECTED;

		FUNC5(conn);
		FUNC2(conn);
		break;

	case 0x1c:	/* SCO interval rejected */
	case 0x1f:	/* Unspecified error */
		if (conn->out && conn->attempt < 2) {
			conn->pkt_type = (hdev->esco_type & SCO_ESCO_MASK) |
					(hdev->esco_type & EDR_ESCO_MASK);
			FUNC9(conn, conn->link->handle);
			goto unlock;
		}
		/* fall through */

	default:
		conn->state = BT_CLOSED;
		break;
	}

	FUNC8(conn, ev->status);
	if (ev->status)
		FUNC3(conn);

unlock:
	FUNC7(hdev);
}