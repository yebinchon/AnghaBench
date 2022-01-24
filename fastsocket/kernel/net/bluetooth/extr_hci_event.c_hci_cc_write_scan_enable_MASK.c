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
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HCI_ISCAN ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SCAN_ENABLE ; 
 int /*<<< orphan*/  HCI_PSCAN ; 
 int SCAN_INQUIRY ; 
 int SCAN_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int) ; 
 void* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	void *sent;

	FUNC0("%s status 0x%x", hdev->name, status);

	sent = FUNC3(hdev, HCI_OP_WRITE_SCAN_ENABLE);
	if (!sent)
		return;

	if (!status) {
		__u8 param = *((__u8 *) sent);

		FUNC1(HCI_PSCAN, &hdev->flags);
		FUNC1(HCI_ISCAN, &hdev->flags);

		if (param & SCAN_INQUIRY)
			FUNC4(HCI_ISCAN, &hdev->flags);

		if (param & SCAN_PAGE)
			FUNC4(HCI_PSCAN, &hdev->flags);
	}

	FUNC2(hdev, status);
}