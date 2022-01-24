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
struct hci_cp_sniff_mode {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  pend; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int /*<<< orphan*/  HCI_OP_SNIFF_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_cp_sniff_mode* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_sniff_mode *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%x", hdev->name, status);

	if (!status)
		return;

	cp = FUNC6(hdev, HCI_OP_SNIFF_MODE);
	if (!cp)
		return;

	FUNC4(hdev);

	conn = FUNC3(hdev, FUNC1(cp->handle));
	if (conn)
		FUNC2(HCI_CONN_MODE_CHANGE_PEND, &conn->pend);

	FUNC5(hdev);
}