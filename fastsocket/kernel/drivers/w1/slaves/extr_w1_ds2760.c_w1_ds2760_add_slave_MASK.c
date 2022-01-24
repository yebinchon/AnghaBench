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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct w1_slave {TYPE_2__ dev; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct platform_device*) ; 
 int FUNC1 () ; 
 int FUNC2 (struct platform_device*) ; 
 struct platform_device* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w1_ds2760_bin_attr ; 

__attribute__((used)) static int FUNC7(struct w1_slave *sl)
{
	int ret;
	int id;
	struct platform_device *pdev;

	id = FUNC1();
	if (id < 0) {
		ret = id;
		goto noid;
	}

	pdev = FUNC3("ds2760-battery", id);
	if (!pdev) {
		ret = -ENOMEM;
		goto pdev_alloc_failed;
	}
	pdev->dev.parent = &sl->dev;

	ret = FUNC2(pdev);
	if (ret)
		goto pdev_add_failed;

	ret = FUNC6(&sl->dev.kobj, &w1_ds2760_bin_attr);
	if (ret)
		goto bin_attr_failed;

	FUNC0(&sl->dev, pdev);

	goto success;

bin_attr_failed:
pdev_add_failed:
	FUNC4(pdev);
pdev_alloc_failed:
	FUNC5(id);
noid:
success:
	return ret;
}