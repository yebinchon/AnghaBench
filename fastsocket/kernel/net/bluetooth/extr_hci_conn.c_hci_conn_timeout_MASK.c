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
struct hci_dev {int dummy; } ;
struct hci_conn {int state; int /*<<< orphan*/  out; int /*<<< orphan*/  type; int /*<<< orphan*/  refcnt; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int BT_CLOSED ; 
#define  BT_CONFIG 131 
#define  BT_CONNECT 130 
#define  BT_CONNECT2 129 
#define  BT_CONNECTED 128 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 

__attribute__((used)) static void FUNC7(unsigned long arg)
{
	struct hci_conn *conn = (void *) arg;
	struct hci_dev *hdev = conn->hdev;
	__u8 reason;

	FUNC0("conn %p state %d", conn, conn->state);

	if (FUNC1(&conn->refcnt))
		return;

	FUNC4(hdev);

	switch (conn->state) {
	case BT_CONNECT:
	case BT_CONNECT2:
		if (conn->type == ACL_LINK && conn->out)
			FUNC2(conn);
		break;
	case BT_CONFIG:
	case BT_CONNECTED:
		reason = FUNC6(conn);
		FUNC3(conn, reason);
		break;
	default:
		conn->state = BT_CLOSED;
		break;
	}

	FUNC5(hdev);
}