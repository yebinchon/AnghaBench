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
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  class; int /*<<< orphan*/ * type; } ;
struct hci_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  parent; int /*<<< orphan*/  type; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_class ; 
 int /*<<< orphan*/  bt_host ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 

int FUNC4(struct hci_dev *hdev)
{
	struct device *dev = &hdev->dev;
	int err;

	FUNC0("%p name %s type %d", hdev, hdev->name, hdev->type);

	dev->type = &bt_host;
	dev->class = bt_class;
	dev->parent = hdev->parent;

	FUNC2(dev, "%s", hdev->name);

	FUNC1(dev, hdev);

	err = FUNC3(dev);
	if (err < 0)
		return err;

	return 0;
}