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
struct hci_rp_read_voice_setting {scalar_t__ status; int /*<<< orphan*/  voice_setting; } ;
struct hci_dev {scalar_t__ voice_setting; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  (* notify ) (struct hci_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_NOTIFY_VOICE_SETTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_read_voice_setting *rp = (void *) skb->data;
	__u16 setting;

	FUNC0("%s status 0x%x", hdev->name, rp->status);

	if (rp->status)
		return;

	setting = FUNC1(rp->voice_setting);

	if (hdev->voice_setting == setting)
		return;

	hdev->voice_setting = setting;

	FUNC0("%s voice setting 0x%04x", hdev->name, setting);

	if (hdev->notify) {
		FUNC3(&hdev->tx_task);
		hdev->notify(hdev, HCI_NOTIFY_VOICE_SETTING);
		FUNC4(&hdev->tx_task);
	}
}