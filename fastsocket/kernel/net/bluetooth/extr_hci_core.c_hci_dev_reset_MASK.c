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
struct hci_dev {int /*<<< orphan*/  tx_task; int /*<<< orphan*/  flags; scalar_t__ sco_cnt; scalar_t__ acl_cnt; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  (* flush ) (struct hci_dev*) ;int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  rx_q; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_RAW ; 
 int /*<<< orphan*/  HCI_UP ; 
 int FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct hci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_reset_req ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(__u16 dev)
{
	struct hci_dev *hdev;
	int ret = 0;

	if (!(hdev = FUNC3(dev)))
		return -ENODEV;

	FUNC7(hdev);
	FUNC13(&hdev->tx_task);

	if (!FUNC15(HCI_UP, &hdev->flags))
		goto done;

	/* Drop queues */
	FUNC11(&hdev->rx_q);
	FUNC11(&hdev->cmd_q);

	FUNC4(hdev);
	FUNC9(hdev);
	FUNC2(hdev);
	FUNC6(hdev);

	if (hdev->flush)
		hdev->flush(hdev);

	FUNC1(&hdev->cmd_cnt, 1);
	hdev->acl_cnt = 0; hdev->sco_cnt = 0;

	if (!FUNC15(HCI_RAW, &hdev->flags))
		ret = FUNC0(hdev, hci_reset_req, 0,
					FUNC10(HCI_INIT_TIMEOUT));

done:
	FUNC14(&hdev->tx_task);
	FUNC8(hdev);
	FUNC5(hdev);
	return ret;
}