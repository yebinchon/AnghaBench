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
struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; } ;
struct uio_device {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct uio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct uio_device*) ; 
 TYPE_1__* uio_class ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct uio_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct uio_device*) ; 
 int /*<<< orphan*/  uio_major ; 

void FUNC8(struct uio_info *info)
{
	struct uio_device *idev;

	if (!info || !info->uio_dev)
		return;

	idev = info->uio_dev;

	FUNC7(idev);

	if (info->irq >= 0)
		FUNC3(info->irq, idev);

	FUNC6(idev);

	FUNC1(idev->dev, NULL);
	FUNC2(uio_class->class, FUNC0(uio_major, idev->minor));
	FUNC4(idev);
	FUNC5();

	return;
}