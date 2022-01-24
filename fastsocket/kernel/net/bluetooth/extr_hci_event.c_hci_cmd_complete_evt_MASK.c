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
struct hci_ev_cmd_complete {scalar_t__ ncmd; int /*<<< orphan*/  opcode; } ;
struct hci_dev {int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  name; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
#define  HCI_OP_EXIT_PERIODIC_INQ 153 
#define  HCI_OP_HOST_BUFFER_SIZE 152 
#define  HCI_OP_INQUIRY_CANCEL 151 
#define  HCI_OP_READ_BD_ADDR 150 
#define  HCI_OP_READ_BUFFER_SIZE 149 
#define  HCI_OP_READ_CLASS_OF_DEV 148 
#define  HCI_OP_READ_DEF_LINK_POLICY 147 
#define  HCI_OP_READ_LINK_POLICY 146 
#define  HCI_OP_READ_LOCAL_COMMANDS 145 
#define  HCI_OP_READ_LOCAL_FEATURES 144 
#define  HCI_OP_READ_LOCAL_NAME 143 
#define  HCI_OP_READ_LOCAL_VERSION 142 
#define  HCI_OP_READ_SSP_MODE 141 
#define  HCI_OP_READ_VOICE_SETTING 140 
#define  HCI_OP_REMOTE_NAME_REQ_CANCEL 139 
#define  HCI_OP_RESET 138 
#define  HCI_OP_ROLE_DISCOVERY 137 
#define  HCI_OP_WRITE_AUTH_ENABLE 136 
#define  HCI_OP_WRITE_CLASS_OF_DEV 135 
#define  HCI_OP_WRITE_DEF_LINK_POLICY 134 
#define  HCI_OP_WRITE_ENCRYPT_MODE 133 
#define  HCI_OP_WRITE_LINK_POLICY 132 
#define  HCI_OP_WRITE_LOCAL_NAME 131 
#define  HCI_OP_WRITE_SCAN_ENABLE 130 
#define  HCI_OP_WRITE_SSP_MODE 129 
#define  HCI_OP_WRITE_VOICE_SETTING 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC32(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_cmd_complete *ev = (void *) skb->data;
	__u16 opcode;

	FUNC30(skb, sizeof(*ev));

	opcode = FUNC1(ev->opcode);

	switch (opcode) {
	case HCI_OP_INQUIRY_CANCEL:
		FUNC5(hdev, skb);
		break;

	case HCI_OP_EXIT_PERIODIC_INQ:
		FUNC3(hdev, skb);
		break;

	case HCI_OP_REMOTE_NAME_REQ_CANCEL:
		FUNC17(hdev, skb);
		break;

	case HCI_OP_ROLE_DISCOVERY:
		FUNC19(hdev, skb);
		break;

	case HCI_OP_READ_LINK_POLICY:
		FUNC10(hdev, skb);
		break;

	case HCI_OP_WRITE_LINK_POLICY:
		FUNC24(hdev, skb);
		break;

	case HCI_OP_READ_DEF_LINK_POLICY:
		FUNC9(hdev, skb);
		break;

	case HCI_OP_WRITE_DEF_LINK_POLICY:
		FUNC22(hdev, skb);
		break;

	case HCI_OP_RESET:
		FUNC18(hdev, skb);
		break;

	case HCI_OP_WRITE_LOCAL_NAME:
		FUNC25(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_NAME:
		FUNC13(hdev, skb);
		break;

	case HCI_OP_WRITE_AUTH_ENABLE:
		FUNC20(hdev, skb);
		break;

	case HCI_OP_WRITE_ENCRYPT_MODE:
		FUNC23(hdev, skb);
		break;

	case HCI_OP_WRITE_SCAN_ENABLE:
		FUNC26(hdev, skb);
		break;

	case HCI_OP_READ_CLASS_OF_DEV:
		FUNC8(hdev, skb);
		break;

	case HCI_OP_WRITE_CLASS_OF_DEV:
		FUNC21(hdev, skb);
		break;

	case HCI_OP_READ_VOICE_SETTING:
		FUNC16(hdev, skb);
		break;

	case HCI_OP_WRITE_VOICE_SETTING:
		FUNC28(hdev, skb);
		break;

	case HCI_OP_HOST_BUFFER_SIZE:
		FUNC4(hdev, skb);
		break;

	case HCI_OP_READ_SSP_MODE:
		FUNC15(hdev, skb);
		break;

	case HCI_OP_WRITE_SSP_MODE:
		FUNC27(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_VERSION:
		FUNC14(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_COMMANDS:
		FUNC11(hdev, skb);
		break;

	case HCI_OP_READ_LOCAL_FEATURES:
		FUNC12(hdev, skb);
		break;

	case HCI_OP_READ_BUFFER_SIZE:
		FUNC7(hdev, skb);
		break;

	case HCI_OP_READ_BD_ADDR:
		FUNC6(hdev, skb);
		break;

	default:
		FUNC0("%s opcode 0x%x", hdev->name, opcode);
		break;
	}

	if (ev->ncmd) {
		FUNC2(&hdev->cmd_cnt, 1);
		if (!FUNC31(&hdev->cmd_q))
			FUNC29(hdev);
	}
}