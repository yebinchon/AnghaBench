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
struct usbip_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDEV_ST_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usbip_device *ud)
{
	FUNC0(&ud->lock);

	ud->status = VDEV_ST_ERROR;

	FUNC1(&ud->lock);
}