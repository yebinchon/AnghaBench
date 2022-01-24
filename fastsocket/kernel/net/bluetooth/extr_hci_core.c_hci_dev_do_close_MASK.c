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
struct hci_dev {scalar_t__ flags; int /*<<< orphan*/  (* close ) (struct hci_dev*) ;int /*<<< orphan*/ * sent_cmd; int /*<<< orphan*/  raw_q; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  cmd_task; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  (* flush ) (struct hci_dev*) ;int /*<<< orphan*/  tx_task; int /*<<< orphan*/  rx_task; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  HCI_DEV_DOWN ; 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_RAW ; 
 int /*<<< orphan*/  HCI_UP ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_reset_req ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC22(struct hci_dev *hdev)
{
	FUNC0("%s %p", hdev->name, hdev);

	FUNC9(hdev, ENODEV);
	FUNC10(hdev);

	if (!FUNC20(HCI_UP, &hdev->flags)) {
		FUNC11(hdev);
		return 0;
	}

	/* Kill RX and TX tasks */
	FUNC19(&hdev->rx_task);
	FUNC19(&hdev->tx_task);

	FUNC5(hdev);
	FUNC12(hdev);
	FUNC4(hdev);
	FUNC7(hdev);

	FUNC8(hdev, HCI_DEV_DOWN);

	if (hdev->flush)
		hdev->flush(hdev);

	/* Reset device */
	FUNC16(&hdev->cmd_q);
	FUNC2(&hdev->cmd_cnt, 1);
	if (!FUNC21(HCI_RAW, &hdev->flags)) {
		FUNC15(HCI_INIT, &hdev->flags);
		FUNC1(hdev, hci_reset_req, 0,
					FUNC14(250));
		FUNC3(HCI_INIT, &hdev->flags);
	}

	/* Kill cmd task */
	FUNC19(&hdev->cmd_task);

	/* Drop queues */
	FUNC16(&hdev->rx_q);
	FUNC16(&hdev->cmd_q);
	FUNC16(&hdev->raw_q);

	/* Drop last sent command */
	if (hdev->sent_cmd) {
		FUNC13(hdev->sent_cmd);
		hdev->sent_cmd = NULL;
	}

	/* After this point our queues are empty
	 * and no tasks are scheduled. */
	hdev->close(hdev);

	/* Clear flags */
	hdev->flags = 0;

	FUNC11(hdev);

	FUNC6(hdev);
	return 0;
}