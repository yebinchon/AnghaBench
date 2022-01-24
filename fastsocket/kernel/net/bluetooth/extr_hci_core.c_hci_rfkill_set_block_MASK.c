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
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC2(void *data, bool blocked)
{
	struct hci_dev *hdev = data;

	FUNC0("%p name %s blocked %d", hdev, hdev->name, blocked);

	if (!blocked)
		return 0;

	FUNC1(hdev);

	return 0;
}