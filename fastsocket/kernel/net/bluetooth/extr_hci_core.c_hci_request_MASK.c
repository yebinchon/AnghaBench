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
struct hci_dev {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  HCI_UP ; 
 int FUNC0 (struct hci_dev*,void (*) (struct hci_dev*,unsigned long),unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct hci_dev *hdev, void (*req)(struct hci_dev *hdev, unsigned long opt),
				unsigned long opt, __u32 timeout)
{
	int ret;

	if (!FUNC3(HCI_UP, &hdev->flags))
		return -ENETDOWN;

	/* Serialize all requests */
	FUNC1(hdev);
	ret = FUNC0(hdev, req, opt, timeout);
	FUNC2(hdev);

	return ret;
}