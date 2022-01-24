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
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 scalar_t__ AUTH_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_AUTH ; 
 int /*<<< orphan*/  HCI_OP_WRITE_AUTH_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,scalar_t__) ; 
 void* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	void *sent;

	FUNC0("%s status 0x%x", hdev->name, status);

	sent = FUNC3(hdev, HCI_OP_WRITE_AUTH_ENABLE);
	if (!sent)
		return;

	if (!status) {
		__u8 param = *((__u8 *) sent);

		if (param == AUTH_ENABLED)
			FUNC4(HCI_AUTH, &hdev->flags);
		else
			FUNC1(HCI_AUTH, &hdev->flags);
	}

	FUNC2(hdev, status);
}