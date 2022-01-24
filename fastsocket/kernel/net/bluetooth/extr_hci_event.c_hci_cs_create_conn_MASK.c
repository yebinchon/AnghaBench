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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_create_conn {int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {scalar_t__ state; int attempt; int out; int /*<<< orphan*/  link_mode; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HCI_LM_MASTER ; 
 int /*<<< orphan*/  HCI_OP_CREATE_CONN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int) ; 
 struct hci_cp_create_conn* FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_create_conn *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%x", hdev->name, status);

	cp = FUNC9(hdev, HCI_OP_CREATE_CONN);
	if (!cp)
		return;

	FUNC6(hdev);

	conn = FUNC5(hdev, ACL_LINK, &cp->bdaddr);

	FUNC0("%s bdaddr %s conn %p", hdev->name, FUNC2(&cp->bdaddr), conn);

	if (status) {
		if (conn && conn->state == BT_CONNECT) {
			if (status != 0x0c || conn->attempt > 2) {
				conn->state = BT_CLOSED;
				FUNC8(conn, status);
				FUNC4(conn);
			} else
				conn->state = BT_CONNECT2;
		}
	} else {
		if (!conn) {
			conn = FUNC3(hdev, ACL_LINK, &cp->bdaddr);
			if (conn) {
				conn->out = 1;
				conn->link_mode |= HCI_LM_MASTER;
			} else
				FUNC1("No memmory for new connection");
		}
	}

	FUNC7(hdev);
}