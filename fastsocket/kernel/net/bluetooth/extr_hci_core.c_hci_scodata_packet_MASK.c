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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct hci_sco_hdr {int /*<<< orphan*/  handle; } ;
struct hci_proto {int /*<<< orphan*/  (* recv_scodata ) (struct hci_conn*,struct sk_buff*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  sco_rx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; } ;
struct hci_conn {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t HCI_PROTO_SCO ; 
 int /*<<< orphan*/  HCI_SCO_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_proto** hci_proto ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_sco_hdr *hdr = (void *) skb->data;
	struct hci_conn *conn;
	__u16 handle;

	FUNC7(skb, HCI_SCO_HDR_SIZE);

	handle = FUNC2(hdr->handle);

	FUNC0("%s len %d handle 0x%x", hdev->name, skb->len, handle);

	hdev->stat.sco_rx++;

	FUNC4(hdev);
	conn = FUNC3(hdev, handle);
	FUNC5(hdev);

	if (conn) {
		register struct hci_proto *hp;

		/* Send to upper protocol */
		if ((hp = hci_proto[HCI_PROTO_SCO]) && hp->recv_scodata) {
			hp->recv_scodata(conn, skb);
			return;
		}
	} else {
		FUNC1("%s SCO packet for unknown connection handle %d",
			hdev->name, handle);
	}

	FUNC6(skb);
}