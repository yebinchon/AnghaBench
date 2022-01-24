#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  bus; } ;
struct TYPE_10__ {void (* release ) (struct device*) ;TYPE_3__* driver; int /*<<< orphan*/  parent; int /*<<< orphan*/  bus; } ;
struct TYPE_9__ {int (* iucv_register ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* iucv_unregister ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  root; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* af_iucv_dev ; 
 TYPE_3__ af_iucv_driver ; 
 int /*<<< orphan*/  af_iucv_handler ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ kfree ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* pr_iucv ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err;

	err = pr_iucv->iucv_register(&af_iucv_handler, 0);
	if (err)
		goto out;
	/* establish dummy device */
	af_iucv_driver.bus = pr_iucv->bus;
	err = FUNC2(&af_iucv_driver);
	if (err)
		goto out_iucv;
	af_iucv_dev = FUNC4(sizeof(struct device), GFP_KERNEL);
	if (!af_iucv_dev) {
		err = -ENOMEM;
		goto out_driver;
	}
	FUNC0(af_iucv_dev, "af_iucv");
	af_iucv_dev->bus = pr_iucv->bus;
	af_iucv_dev->parent = pr_iucv->root;
	af_iucv_dev->release = (void (*)(struct device *))kfree;
	af_iucv_dev->driver = &af_iucv_driver;
	err = FUNC1(af_iucv_dev);
	if (err)
		goto out_driver;
	return 0;

out_driver:
	FUNC3(&af_iucv_driver);
out_iucv:
	pr_iucv->iucv_unregister(&af_iucv_handler, 0);
out:
	return err;
}