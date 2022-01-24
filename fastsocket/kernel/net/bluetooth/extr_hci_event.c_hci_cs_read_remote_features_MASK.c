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
struct hci_cp_read_remote_features {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_READ_REMOTE_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_cp_read_remote_features* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_read_remote_features *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%x", hdev->name, status);

	if (!status)
		return;

	cp = FUNC7(hdev, HCI_OP_READ_REMOTE_FEATURES);
	if (!cp)
		return;

	FUNC4(hdev);

	conn = FUNC2(hdev, FUNC1(cp->handle));
	if (conn) {
		if (conn->state == BT_CONFIG) {
			FUNC6(conn, status);
			FUNC3(conn);
		}
	}

	FUNC5(hdev);
}