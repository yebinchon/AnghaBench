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
struct hci_dev {int /*<<< orphan*/  raw_q; int /*<<< orphan*/  sco_cnt; int /*<<< orphan*/  acl_cnt; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  hci_task_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct hci_dev *hdev = (struct hci_dev *) arg;
	struct sk_buff *skb;

	FUNC5(&hci_task_lock);

	FUNC0("%s acl %d sco %d", hdev->name, hdev->acl_cnt, hdev->sco_cnt);

	/* Schedule queues and send stuff to HCI driver */

	FUNC1(hdev);

	FUNC3(hdev);

	FUNC2(hdev);

	/* Send next queued raw (unknown type) packet */
	while ((skb = FUNC7(&hdev->raw_q)))
		FUNC4(skb);

	FUNC6(&hci_task_lock);
}