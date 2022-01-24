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
struct rfcomm_dev {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct hci_conn {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 struct hci_conn* FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 struct hci_dev* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct device *FUNC3(struct rfcomm_dev *dev)
{
	struct hci_dev *hdev;
	struct hci_conn *conn;

	hdev = FUNC2(&dev->dst, &dev->src);
	if (!hdev)
		return NULL;

	conn = FUNC0(hdev, ACL_LINK, &dev->dst);

	FUNC1(hdev);

	return conn ? &conn->dev : NULL;
}