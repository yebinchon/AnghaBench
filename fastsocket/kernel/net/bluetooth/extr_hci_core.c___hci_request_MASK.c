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
struct hci_dev {int req_status; int req_result; int /*<<< orphan*/  name; int /*<<< orphan*/  req_wait_q; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int ETIMEDOUT ; 
#define  HCI_REQ_CANCELED 129 
#define  HCI_REQ_DONE 128 
 int HCI_REQ_PEND ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, void (*req)(struct hci_dev *hdev, unsigned long opt),
				unsigned long opt, __u32 timeout)
{
	FUNC1(wait, current);
	int err = 0;

	FUNC0("%s start", hdev->name);

	hdev->req_status = HCI_REQ_PEND;

	FUNC2(&hdev->req_wait_q, &wait);
	FUNC6(TASK_INTERRUPTIBLE);

	req(hdev, opt);
	FUNC5(timeout);

	FUNC4(&hdev->req_wait_q, &wait);

	if (FUNC7(current))
		return -EINTR;

	switch (hdev->req_status) {
	case HCI_REQ_DONE:
		err = -FUNC3(hdev->req_result);
		break;

	case HCI_REQ_CANCELED:
		err = -hdev->req_result;
		break;

	default:
		err = -ETIMEDOUT;
		break;
	}

	hdev->req_status = hdev->req_result = 0;

	FUNC0("%s end: err %d", hdev->name, err);

	return err;
}