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
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  promisc; int /*<<< orphan*/  rx_q; } ;
struct TYPE_2__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_EVENT_PKT 129 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_RAW ; 
#define  HCI_SCODATA_PKT 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  hci_task_lock ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(unsigned long arg)
{
	struct hci_dev *hdev = (struct hci_dev *) arg;
	struct sk_buff *skb;

	FUNC0("%s", hdev->name);

	FUNC8(&hci_task_lock);

	while ((skb = FUNC10(&hdev->rx_q))) {
		if (FUNC1(&hdev->promisc)) {
			/* Send copy to the sockets */
			FUNC6(hdev, skb);
		}

		if (FUNC11(HCI_RAW, &hdev->flags)) {
			FUNC7(skb);
			continue;
		}

		if (FUNC11(HCI_INIT, &hdev->flags)) {
			/* Don't process data packets in this states. */
			switch (FUNC2(skb)->pkt_type) {
			case HCI_ACLDATA_PKT:
			case HCI_SCODATA_PKT:
				FUNC7(skb);
				continue;
			}
		}

		/* Process frame */
		switch (FUNC2(skb)->pkt_type) {
		case HCI_EVENT_PKT:
			FUNC4(hdev, skb);
			break;

		case HCI_ACLDATA_PKT:
			FUNC0("%s ACL data packet", hdev->name);
			FUNC3(hdev, skb);
			break;

		case HCI_SCODATA_PKT:
			FUNC0("%s SCO data packet", hdev->name);
			FUNC5(hdev, skb);
			break;

		default:
			FUNC7(skb);
			break;
		}
	}

	FUNC9(&hci_task_lock);
}