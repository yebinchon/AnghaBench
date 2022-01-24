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
struct hci_dev {int /*<<< orphan*/  tx_task; int /*<<< orphan*/  (* notify ) (struct hci_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  acl_cnt; int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  data_q; struct hci_conn* link; scalar_t__ sent; int /*<<< orphan*/  disc_timer; int /*<<< orphan*/  idle_timer; int /*<<< orphan*/  handle; struct hci_dev* hdev; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_NOTIFY_CONN_DEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("%s conn %p handle %d", hdev->name, conn, conn->handle);

	FUNC1(&conn->idle_timer);

	FUNC1(&conn->disc_timer);

	if (conn->type == ACL_LINK) {
		struct hci_conn *sco = conn->link;
		if (sco)
			sco->link = NULL;

		/* Unacked frames */
		hdev->acl_cnt += conn->sent;
	} else {
		struct hci_conn *acl = conn->link;
		if (acl) {
			acl->link = NULL;
			FUNC3(acl);
		}
	}

	FUNC8(&hdev->tx_task);

	FUNC2(hdev, conn);
	if (hdev->notify)
		hdev->notify(hdev, HCI_NOTIFY_CONN_DEL);

	FUNC9(&hdev->tx_task);

	FUNC6(&conn->data_q);

	FUNC4(conn);

	FUNC5(hdev);

	return 0;
}