#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wdm_device {TYPE_1__* intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  count; int /*<<< orphan*/  plock; } ;
struct inode {int dummy; } ;
struct file {struct wdm_device* private_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdm_mutex ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct wdm_device *desc = file->private_data;

	FUNC2(&wdm_mutex);
	FUNC2(&desc->plock);
	desc->count--;
	FUNC3(&desc->plock);

	if (!desc->count) {
		FUNC0(&desc->intf->dev, "wdm_release: cleanup");
		FUNC1(desc);
		if (!FUNC4(WDM_DISCONNECTING, &desc->flags))
			desc->intf->needs_remote_wakeup = 0;
	}
	FUNC3(&wdm_mutex);
	return 0;
}