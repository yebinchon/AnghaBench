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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ dev; } ;
struct hci_dev {int (* send ) (struct sk_buff*) ;int /*<<< orphan*/  promisc; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;

	if (!hdev) {
		FUNC5(skb);
		return -ENODEV;
	}

	FUNC0("%s type %d len %d", hdev->name, FUNC3(skb)->pkt_type, skb->len);

	if (FUNC2(&hdev->promisc)) {
		/* Time stamp */
		FUNC1(skb);

		FUNC4(hdev, skb);
	}

	/* Get rid of skb owner, prior to sending to the driver. */
	FUNC6(skb);

	return hdev->send(skb);
}