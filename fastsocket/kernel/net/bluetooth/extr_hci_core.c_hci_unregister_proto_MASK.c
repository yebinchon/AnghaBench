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
struct hci_proto {size_t id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_proto*,int /*<<< orphan*/ ,size_t) ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t HCI_MAX_PROTO ; 
 int /*<<< orphan*/ ** hci_proto ; 
 int /*<<< orphan*/  hci_task_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hci_proto *hp)
{
	int err = 0;

	FUNC0("%p name %s id %d", hp, hp->name, hp->id);

	if (hp->id >= HCI_MAX_PROTO)
		return -EINVAL;

	FUNC1(&hci_task_lock);

	if (hci_proto[hp->id])
		hci_proto[hp->id] = NULL;
	else
		err = -ENOENT;

	FUNC2(&hci_task_lock);

	return err;
}