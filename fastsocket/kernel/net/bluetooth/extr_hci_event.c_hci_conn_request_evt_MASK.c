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
struct TYPE_2__ {int /*<<< orphan*/  dev_class; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_conn_request {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  link_type; int /*<<< orphan*/  dev_class; } ;
struct hci_dev {int link_mode; int voice_setting; int /*<<< orphan*/  name; } ;
struct hci_cp_reject_conn_req {int role; int retrans_effort; int reason; int /*<<< orphan*/  bdaddr; void* content_format; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; } ;
struct hci_cp_accept_sync_conn_req {int role; int retrans_effort; int reason; int /*<<< orphan*/  bdaddr; void* content_format; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; } ;
struct hci_cp_accept_conn_req {int role; int retrans_effort; int reason; int /*<<< orphan*/  bdaddr; void* content_format; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; } ;
struct hci_conn {int pkt_type; int /*<<< orphan*/  state; int /*<<< orphan*/  dev_class; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int HCI_LM_ACCEPT ; 
 int HCI_LM_MASTER ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_CONN_REQ ; 
 int /*<<< orphan*/  HCI_OP_ACCEPT_SYNC_CONN_REQ ; 
 int /*<<< orphan*/  HCI_OP_REJECT_CONN_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC7 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC10 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_reject_conn_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 scalar_t__ FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC16(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_conn_request *ev = (void *) skb->data;
	int mask = hdev->link_mode;

	FUNC0("%s bdaddr %s type 0x%x", hdev->name,
					FUNC3(&ev->bdaddr), ev->link_type);

	mask |= FUNC11(hdev, &ev->bdaddr, ev->link_type);

	if (mask & HCI_LM_ACCEPT) {
		/* Connection accepted */
		struct inquiry_entry *ie;
		struct hci_conn *conn;

		FUNC8(hdev);

		if ((ie = FUNC10(hdev, &ev->bdaddr)))
			FUNC15(ie->data.dev_class, ev->dev_class, 3);

		conn = FUNC7(hdev, ev->link_type, &ev->bdaddr);
		if (!conn) {
			if (!(conn = FUNC6(hdev, ev->link_type, &ev->bdaddr))) {
				FUNC1("No memmory for new connection");
				FUNC9(hdev);
				return;
			}
		}

		FUNC15(conn->dev_class, ev->dev_class, 3);
		conn->state = BT_CONNECT;

		FUNC9(hdev);

		if (ev->link_type == ACL_LINK || !FUNC13(hdev)) {
			struct hci_cp_accept_conn_req cp;

			FUNC2(&cp.bdaddr, &ev->bdaddr);

			if (FUNC14(hdev) && (mask & HCI_LM_MASTER))
				cp.role = 0x00; /* Become master */
			else
				cp.role = 0x01; /* Remain slave */

			FUNC12(hdev, HCI_OP_ACCEPT_CONN_REQ,
							sizeof(cp), &cp);
		} else {
			struct hci_cp_accept_sync_conn_req cp;

			FUNC2(&cp.bdaddr, &ev->bdaddr);
			cp.pkt_type = FUNC4(conn->pkt_type);

			cp.tx_bandwidth   = FUNC5(0x00001f40);
			cp.rx_bandwidth   = FUNC5(0x00001f40);
			cp.max_latency    = FUNC4(0xffff);
			cp.content_format = FUNC4(hdev->voice_setting);
			cp.retrans_effort = 0xff;

			FUNC12(hdev, HCI_OP_ACCEPT_SYNC_CONN_REQ,
							sizeof(cp), &cp);
		}
	} else {
		/* Connection rejected */
		struct hci_cp_reject_conn_req cp;

		FUNC2(&cp.bdaddr, &ev->bdaddr);
		cp.reason = 0x0f;
		FUNC12(hdev, HCI_OP_REJECT_CONN_REQ, sizeof(cp), &cp);
	}
}