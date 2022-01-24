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
struct hci_dev_stats {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  stat; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENODEV ; 
 struct hci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC3(__u16 dev)
{
	struct hci_dev *hdev;
	int ret = 0;

	if (!(hdev = FUNC0(dev)))
		return -ENODEV;

	FUNC2(&hdev->stat, 0, sizeof(struct hci_dev_stats));

	FUNC1(hdev);

	return ret;
}