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
struct hci_dev {scalar_t__ flags; int /*<<< orphan*/  (* close ) (struct hci_dev*) ;int /*<<< orphan*/ * sent_cmd; int /*<<< orphan*/  (* flush ) (struct hci_dev*) ;int /*<<< orphan*/  rx_q; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_task; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  rx_task; int /*<<< orphan*/  cmd_cnt; scalar_t__ (* open ) (struct hci_dev*) ;scalar_t__ quirks; scalar_t__ rfkill; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int EALREADY ; 
 int EIO ; 
 int ENODEV ; 
 int ERFKILL ; 
 int /*<<< orphan*/  HCI_DEV_UP ; 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_RAW ; 
 int /*<<< orphan*/  HCI_UP ; 
 int FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct hci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_init_req ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__*) ; 

int FUNC20(__u16 dev)
{
	struct hci_dev *hdev;
	int ret = 0;

	if (!(hdev = FUNC4(dev)))
		return -ENODEV;

	FUNC0("%s %p", hdev->name, hdev);

	FUNC8(hdev);

	if (hdev->rfkill && FUNC12(hdev->rfkill)) {
		ret = -ERFKILL;
		goto done;
	}

	if (FUNC19(HCI_UP, &hdev->flags)) {
		ret = -EALREADY;
		goto done;
	}

	if (FUNC19(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
		FUNC13(HCI_RAW, &hdev->flags);

	if (hdev->open(hdev)) {
		ret = -EIO;
		goto done;
	}

	if (!FUNC19(HCI_RAW, &hdev->flags)) {
		FUNC2(&hdev->cmd_cnt, 1);
		FUNC13(HCI_INIT, &hdev->flags);

		//__hci_request(hdev, hci_reset_req, 0, HZ);
		ret = FUNC1(hdev, hci_init_req, 0,
					FUNC11(HCI_INIT_TIMEOUT));

		FUNC3(HCI_INIT, &hdev->flags);
	}

	if (!ret) {
		FUNC5(hdev);
		FUNC13(HCI_UP, &hdev->flags);
		FUNC7(hdev, HCI_DEV_UP);
	} else {
		/* Init failed, cleanup */
		FUNC18(&hdev->rx_task);
		FUNC18(&hdev->tx_task);
		FUNC18(&hdev->cmd_task);

		FUNC14(&hdev->cmd_q);
		FUNC14(&hdev->rx_q);

		if (hdev->flush)
			hdev->flush(hdev);

		if (hdev->sent_cmd) {
			FUNC10(hdev->sent_cmd);
			hdev->sent_cmd = NULL;
		}

		hdev->close(hdev);
		hdev->flags = 0;
	}

done:
	FUNC9(hdev);
	FUNC6(hdev);
	return ret;
}