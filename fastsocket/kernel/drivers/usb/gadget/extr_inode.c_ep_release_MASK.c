#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct ep_data* private_data; } ;
struct TYPE_4__ {scalar_t__ bDescriptorType; } ;
struct TYPE_3__ {scalar_t__ bDescriptorType; } ;
struct ep_data {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep; TYPE_2__ hs_desc; TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ STATE_EP_DISABLED ; 
 scalar_t__ STATE_EP_UNBOUND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ep_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (struct inode *inode, struct file *fd)
{
	struct ep_data		*data = fd->private_data;
	int value;

	if ((value = FUNC0(&data->lock)) < 0)
		return value;

	/* clean up if this can be reopened */
	if (data->state != STATE_EP_UNBOUND) {
		data->state = STATE_EP_DISABLED;
		data->desc.bDescriptorType = 0;
		data->hs_desc.bDescriptorType = 0;
		FUNC3(data->ep);
	}
	FUNC2 (&data->lock);
	FUNC1 (data);
	return 0;
}