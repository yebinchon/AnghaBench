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
struct hci_dev {scalar_t__ voice_setting; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  (* notify ) (struct hci_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_NOTIFY_VOICE_SETTING ; 
 int /*<<< orphan*/  HCI_OP_WRITE_VOICE_SETTING ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	__u16 setting;
	void *sent;

	FUNC0("%s status 0x%x", hdev->name, status);

	if (status)
		return;

	sent = FUNC2(hdev, HCI_OP_WRITE_VOICE_SETTING);
	if (!sent)
		return;

	setting = FUNC1(sent);

	if (hdev->voice_setting == setting)
		return;

	hdev->voice_setting = setting;

	FUNC0("%s voice setting 0x%04x", hdev->name, setting);

	if (hdev->notify) {
		FUNC4(&hdev->tx_task);
		hdev->notify(hdev, HCI_NOTIFY_VOICE_SETTING);
		FUNC5(&hdev->tx_task);
	}
}