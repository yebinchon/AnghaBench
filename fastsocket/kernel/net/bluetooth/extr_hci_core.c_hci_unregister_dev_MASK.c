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
struct hci_dev {scalar_t__ rfkill; int /*<<< orphan*/ * reassembly; int /*<<< orphan*/  list; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_DEV_UNREG ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_dev_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct hci_dev *hdev)
{
	int i;

	FUNC0("%p name %s type %d", hdev, hdev->name, hdev->type);

	FUNC9(&hci_dev_list_lock);
	FUNC6(&hdev->list);
	FUNC10(&hci_dev_list_lock);

	FUNC2(hdev);

	for (i = 0; i < 3; i++)
		FUNC5(hdev->reassembly[i]);

	FUNC3(hdev, HCI_DEV_UNREG);

	if (hdev->rfkill) {
		FUNC8(hdev->rfkill);
		FUNC7(hdev->rfkill);
	}

	FUNC4(hdev);

	FUNC1(hdev);

	return 0;
}