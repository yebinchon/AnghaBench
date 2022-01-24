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
struct hci_cp_add_sco {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  state; struct hci_conn* link; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_ADD_SCO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_cp_add_sco* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, __u8 status)
{
	struct hci_cp_add_sco *cp;
	struct hci_conn *acl, *sco;
	__u16 handle;

	FUNC0("%s status 0x%x", hdev->name, status);

	if (!status)
		return;

	cp = FUNC7(hdev, HCI_OP_ADD_SCO);
	if (!cp)
		return;

	handle = FUNC1(cp->handle);

	FUNC0("%s handle %d", hdev->name, handle);

	FUNC4(hdev);

	acl = FUNC3(hdev, handle);
	if (acl && (sco = acl->link)) {
		sco->state = BT_CLOSED;

		FUNC6(sco, status);
		FUNC2(sco);
	}

	FUNC5(hdev);
}