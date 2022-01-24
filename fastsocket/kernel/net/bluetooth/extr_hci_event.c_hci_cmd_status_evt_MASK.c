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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_cmd_status {scalar_t__ ncmd; int /*<<< orphan*/  status; int /*<<< orphan*/  opcode; } ;
struct hci_dev {int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  name; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
#define  HCI_OP_ADD_SCO 138 
#define  HCI_OP_AUTH_REQUESTED 137 
#define  HCI_OP_CREATE_CONN 136 
#define  HCI_OP_EXIT_SNIFF_MODE 135 
#define  HCI_OP_INQUIRY 134 
#define  HCI_OP_READ_REMOTE_EXT_FEATURES 133 
#define  HCI_OP_READ_REMOTE_FEATURES 132 
#define  HCI_OP_REMOTE_NAME_REQ 131 
#define  HCI_OP_SETUP_SYNC_CONN 130 
#define  HCI_OP_SET_CONN_ENCRYPT 129 
#define  HCI_OP_SNIFF_MODE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC17(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_cmd_status *ev = (void *) skb->data;
	__u16 opcode;

	FUNC15(skb, sizeof(*ev));

	opcode = FUNC1(ev->opcode);

	switch (opcode) {
	case HCI_OP_INQUIRY:
		FUNC7(hdev, ev->status);
		break;

	case HCI_OP_CREATE_CONN:
		FUNC5(hdev, ev->status);
		break;

	case HCI_OP_ADD_SCO:
		FUNC3(hdev, ev->status);
		break;

	case HCI_OP_AUTH_REQUESTED:
		FUNC4(hdev, ev->status);
		break;

	case HCI_OP_SET_CONN_ENCRYPT:
		FUNC11(hdev, ev->status);
		break;

	case HCI_OP_REMOTE_NAME_REQ:
		FUNC10(hdev, ev->status);
		break;

	case HCI_OP_READ_REMOTE_FEATURES:
		FUNC9(hdev, ev->status);
		break;

	case HCI_OP_READ_REMOTE_EXT_FEATURES:
		FUNC8(hdev, ev->status);
		break;

	case HCI_OP_SETUP_SYNC_CONN:
		FUNC12(hdev, ev->status);
		break;

	case HCI_OP_SNIFF_MODE:
		FUNC13(hdev, ev->status);
		break;

	case HCI_OP_EXIT_SNIFF_MODE:
		FUNC6(hdev, ev->status);
		break;

	default:
		FUNC0("%s opcode 0x%x", hdev->name, opcode);
		break;
	}

	if (ev->ncmd) {
		FUNC2(&hdev->cmd_cnt, 1);
		if (!FUNC16(&hdev->cmd_q))
			FUNC14(hdev);
	}
}