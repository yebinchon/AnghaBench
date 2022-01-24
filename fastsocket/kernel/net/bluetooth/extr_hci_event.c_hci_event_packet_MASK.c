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
struct hci_event_hdr {int evt; } ;
struct TYPE_2__ {int /*<<< orphan*/  evt_rx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  name; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HCI_EVENT_HDR_SIZE ; 
#define  HCI_EV_AUTH_COMPLETE 159 
#define  HCI_EV_CHANGE_LINK_KEY_COMPLETE 158 
#define  HCI_EV_CLOCK_OFFSET 157 
#define  HCI_EV_CMD_COMPLETE 156 
#define  HCI_EV_CMD_STATUS 155 
#define  HCI_EV_CONN_COMPLETE 154 
#define  HCI_EV_CONN_REQUEST 153 
#define  HCI_EV_DISCONN_COMPLETE 152 
#define  HCI_EV_ENCRYPT_CHANGE 151 
#define  HCI_EV_EXTENDED_INQUIRY_RESULT 150 
#define  HCI_EV_INQUIRY_COMPLETE 149 
#define  HCI_EV_INQUIRY_RESULT 148 
#define  HCI_EV_INQUIRY_RESULT_WITH_RSSI 147 
#define  HCI_EV_IO_CAPA_REQUEST 146 
#define  HCI_EV_LINK_KEY_NOTIFY 145 
#define  HCI_EV_LINK_KEY_REQ 144 
#define  HCI_EV_MODE_CHANGE 143 
#define  HCI_EV_NUM_COMP_PKTS 142 
#define  HCI_EV_PIN_CODE_REQ 141 
#define  HCI_EV_PKT_TYPE_CHANGE 140 
#define  HCI_EV_PSCAN_REP_MODE 139 
#define  HCI_EV_QOS_SETUP_COMPLETE 138 
#define  HCI_EV_REMOTE_EXT_FEATURES 137 
#define  HCI_EV_REMOTE_FEATURES 136 
#define  HCI_EV_REMOTE_HOST_FEATURES 135 
#define  HCI_EV_REMOTE_NAME 134 
#define  HCI_EV_REMOTE_VERSION 133 
#define  HCI_EV_ROLE_CHANGE 132 
#define  HCI_EV_SIMPLE_PAIR_COMPLETE 131 
#define  HCI_EV_SNIFF_SUBRATE 130 
#define  HCI_EV_SYNC_CONN_CHANGED 129 
#define  HCI_EV_SYNC_CONN_COMPLETE 128 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct sk_buff*) ; 
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
 int /*<<< orphan*/  FUNC29 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC33 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC35(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_event_hdr *hdr = (void *) skb->data;
	__u8 event = hdr->evt;

	FUNC34(skb, HCI_EVENT_HDR_SIZE);

	switch (event) {
	case HCI_EV_INQUIRY_COMPLETE:
		FUNC11(hdev, skb);
		break;

	case HCI_EV_INQUIRY_RESULT:
		FUNC12(hdev, skb);
		break;

	case HCI_EV_CONN_COMPLETE:
		FUNC6(hdev, skb);
		break;

	case HCI_EV_CONN_REQUEST:
		FUNC7(hdev, skb);
		break;

	case HCI_EV_DISCONN_COMPLETE:
		FUNC8(hdev, skb);
		break;

	case HCI_EV_AUTH_COMPLETE:
		FUNC1(hdev, skb);
		break;

	case HCI_EV_REMOTE_NAME:
		FUNC26(hdev, skb);
		break;

	case HCI_EV_ENCRYPT_CHANGE:
		FUNC9(hdev, skb);
		break;

	case HCI_EV_CHANGE_LINK_KEY_COMPLETE:
		FUNC2(hdev, skb);
		break;

	case HCI_EV_REMOTE_FEATURES:
		FUNC24(hdev, skb);
		break;

	case HCI_EV_REMOTE_VERSION:
		FUNC27(hdev, skb);
		break;

	case HCI_EV_QOS_SETUP_COMPLETE:
		FUNC22(hdev, skb);
		break;

	case HCI_EV_CMD_COMPLETE:
		FUNC4(hdev, skb);
		break;

	case HCI_EV_CMD_STATUS:
		FUNC5(hdev, skb);
		break;

	case HCI_EV_ROLE_CHANGE:
		FUNC28(hdev, skb);
		break;

	case HCI_EV_NUM_COMP_PKTS:
		FUNC18(hdev, skb);
		break;

	case HCI_EV_MODE_CHANGE:
		FUNC17(hdev, skb);
		break;

	case HCI_EV_PIN_CODE_REQ:
		FUNC19(hdev, skb);
		break;

	case HCI_EV_LINK_KEY_REQ:
		FUNC16(hdev, skb);
		break;

	case HCI_EV_LINK_KEY_NOTIFY:
		FUNC15(hdev, skb);
		break;

	case HCI_EV_CLOCK_OFFSET:
		FUNC3(hdev, skb);
		break;

	case HCI_EV_PKT_TYPE_CHANGE:
		FUNC20(hdev, skb);
		break;

	case HCI_EV_PSCAN_REP_MODE:
		FUNC21(hdev, skb);
		break;

	case HCI_EV_INQUIRY_RESULT_WITH_RSSI:
		FUNC13(hdev, skb);
		break;

	case HCI_EV_REMOTE_EXT_FEATURES:
		FUNC23(hdev, skb);
		break;

	case HCI_EV_SYNC_CONN_COMPLETE:
		FUNC32(hdev, skb);
		break;

	case HCI_EV_SYNC_CONN_CHANGED:
		FUNC31(hdev, skb);
		break;

	case HCI_EV_SNIFF_SUBRATE:
		FUNC30(hdev, skb);
		break;

	case HCI_EV_EXTENDED_INQUIRY_RESULT:
		FUNC10(hdev, skb);
		break;

	case HCI_EV_IO_CAPA_REQUEST:
		FUNC14(hdev, skb);
		break;

	case HCI_EV_SIMPLE_PAIR_COMPLETE:
		FUNC29(hdev, skb);
		break;

	case HCI_EV_REMOTE_HOST_FEATURES:
		FUNC25(hdev, skb);
		break;

	default:
		FUNC0("%s event 0x%x", hdev->name, event);
		break;
	}

	FUNC33(skb);
	hdev->stat.evt_rx++;
}