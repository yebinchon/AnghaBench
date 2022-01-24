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
struct sk_buff {scalar_t__ len; void* dev; } ;
struct hci_sco_hdr {scalar_t__ dlen; int /*<<< orphan*/  handle; } ;
struct hci_dev {scalar_t__ sco_mtu; int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  data_q; int /*<<< orphan*/  handle; struct hci_dev* hdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HCI_SCODATA_PKT ; 
 int /*<<< orphan*/  HCI_SCO_HDR_SIZE ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hci_sco_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

int FUNC10(struct hci_conn *conn, struct sk_buff *skb)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_sco_hdr hdr;

	FUNC0("%s len %d", hdev->name, skb->len);

	if (skb->len > hdev->sco_mtu) {
		FUNC4(skb);
		return -EINVAL;
	}

	hdr.handle = FUNC2(conn->handle);
	hdr.dlen   = skb->len;

	FUNC6(skb, HCI_SCO_HDR_SIZE);
	FUNC8(skb);
	FUNC5(FUNC9(skb), &hdr, HCI_SCO_HDR_SIZE);

	skb->dev = (void *) hdev;
	FUNC1(skb)->pkt_type = HCI_SCODATA_PKT;
	FUNC7(&conn->data_q, skb);
	FUNC3(hdev);
	return 0;
}