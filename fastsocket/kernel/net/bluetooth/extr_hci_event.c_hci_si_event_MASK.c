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
struct sk_buff {void* dev; } ;
struct hci_event_hdr {int plen; int /*<<< orphan*/  evt; } ;
struct hci_ev_stack_internal {int type; int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int incoming; int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HCI_EVENT_HDR_SIZE ; 
 int /*<<< orphan*/  HCI_EVENT_PKT ; 
 int /*<<< orphan*/  HCI_EV_STACK_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 

void FUNC7(struct hci_dev *hdev, int type, int dlen, void *data)
{
	struct hci_event_hdr *hdr;
	struct hci_ev_stack_internal *ev;
	struct sk_buff *skb;

	skb = FUNC2(HCI_EVENT_HDR_SIZE + sizeof(*ev) + dlen, GFP_ATOMIC);
	if (!skb)
		return;

	hdr = (void *) FUNC6(skb, HCI_EVENT_HDR_SIZE);
	hdr->evt  = HCI_EV_STACK_INTERNAL;
	hdr->plen = sizeof(*ev) + dlen;

	ev  = (void *) FUNC6(skb, sizeof(*ev) + dlen);
	ev->type = type;
	FUNC5(ev->data, data, dlen);

	FUNC1(skb)->incoming = 1;
	FUNC0(skb);

	FUNC1(skb)->pkt_type = HCI_EVENT_PKT;
	skb->dev = (void *) hdev;
	FUNC3(hdev, skb);
	FUNC4(skb);
}