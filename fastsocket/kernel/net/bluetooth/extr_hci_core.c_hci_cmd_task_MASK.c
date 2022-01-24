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
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  cmd_q; scalar_t__ cmd_last_tx; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  sent_cmd; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(unsigned long arg)
{
	struct hci_dev *hdev = (struct hci_dev *) arg;
	struct sk_buff *skb;

	FUNC0("%s cmd %d", hdev->name, FUNC3(&hdev->cmd_cnt));

	if (!FUNC3(&hdev->cmd_cnt) && FUNC11(jiffies, hdev->cmd_last_tx + HZ)) {
		FUNC1("%s command tx timeout", hdev->name);
		FUNC4(&hdev->cmd_cnt, 1);
	}

	/* Send queued commands */
	if (FUNC3(&hdev->cmd_cnt) && (skb = FUNC9(&hdev->cmd_q))) {
		FUNC7(hdev->sent_cmd);

		if ((hdev->sent_cmd = FUNC8(skb, GFP_ATOMIC))) {
			FUNC2(&hdev->cmd_cnt);
			FUNC6(skb);
			hdev->cmd_last_tx = jiffies;
		} else {
			FUNC10(&hdev->cmd_q, skb);
			FUNC5(hdev);
		}
	}
}