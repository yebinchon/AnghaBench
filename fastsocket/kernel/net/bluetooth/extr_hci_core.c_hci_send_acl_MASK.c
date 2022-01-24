#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct sk_buff {int len; TYPE_2__ data_q; int /*<<< orphan*/  handle; void* dev; struct sk_buff* next; struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int len; TYPE_2__ data_q; int /*<<< orphan*/  handle; void* dev; struct hci_conn* next; struct hci_dev* hdev; } ;
typedef  int __u16 ;
struct TYPE_7__ {void* pkt_type; } ;
struct TYPE_5__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int ACL_CONT ; 
 int ACL_START ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 void* HCI_ACLDATA_PKT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct sk_buff*) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct hci_conn *conn, struct sk_buff *skb, __u16 flags)
{
	struct hci_dev *hdev = conn->hdev;
	struct sk_buff *list;

	FUNC0("%s conn %p flags 0x%x", hdev->name, conn, flags);

	skb->dev = (void *) hdev;
	FUNC2(skb)->pkt_type = HCI_ACLDATA_PKT;
	FUNC3(skb, conn->handle, flags | ACL_START);

	if (!(list = FUNC6(skb)->frag_list)) {
		/* Non fragmented */
		FUNC0("%s nonfrag skb %p len %d", hdev->name, skb, skb->len);

		FUNC5(&conn->data_q, skb);
	} else {
		/* Fragmented */
		FUNC0("%s frag %p len %d", hdev->name, skb, skb->len);

		FUNC6(skb)->frag_list = NULL;

		/* Queue all fragments atomically */
		FUNC7(&conn->data_q.lock);

		FUNC1(&conn->data_q, skb);
		do {
			skb = list; list = list->next;

			skb->dev = (void *) hdev;
			FUNC2(skb)->pkt_type = HCI_ACLDATA_PKT;
			FUNC3(skb, conn->handle, flags | ACL_CONT);

			FUNC0("%s frag %p len %d", hdev->name, skb, skb->len);

			FUNC1(&conn->data_q, skb);
		} while (list);

		FUNC8(&conn->data_q.lock);
	}

	FUNC4(hdev);
	return 0;
}