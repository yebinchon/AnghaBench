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
struct wdm_device {scalar_t__ werr; TYPE_1__* intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; } ;
struct file {struct wdm_device* private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, fl_owner_t id)
{
	struct wdm_device *desc = file->private_data;

	FUNC2(desc->wait, !FUNC1(WDM_IN_USE, &desc->flags));
	if (desc->werr < 0)
		FUNC0(&desc->intf->dev, "Error in flush path: %d\n",
			desc->werr);

	return desc->werr;
}