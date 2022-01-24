#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct adsp_device {char const* name; struct device* device; TYPE_1__ cdev; int /*<<< orphan*/  event_queue_lock; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  event_wait; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adsp_class ; 
 int /*<<< orphan*/  adsp_fops ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct adsp_device *adev, const char *name,
			struct device *parent, dev_t devt)
{
	struct device *dev;
	int rc;

	dev = FUNC4(adsp_class, parent, devt, "%s", name);
	if (FUNC1(dev))
		return;

	FUNC6(&adev->event_wait);
	FUNC0(&adev->event_queue);
	FUNC7(&adev->event_queue_lock);

	FUNC3(&adev->cdev, &adsp_fops);
	adev->cdev.owner = THIS_MODULE;

	rc = FUNC2(&adev->cdev, devt, 1);
	if (rc < 0) {
		FUNC5(adsp_class, devt);
	} else {
		adev->device = dev;
		adev->name = name;
	}
}