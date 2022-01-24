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
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct hci_dev*) ; 
 struct hci_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 

int FUNC3(__u16 dev)
{
	struct hci_dev *hdev;
	int err;

	if (!(hdev = FUNC1(dev)))
		return -ENODEV;
	err = FUNC0(hdev);
	FUNC2(hdev);
	return err;
}