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
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; int /*<<< orphan*/  parent; } ;
struct umc_dev {TYPE_1__ resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long,unsigned long long,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4(struct umc_dev *umc)
{
	int err;

	err = FUNC3(umc->resource.parent, &umc->resource);
	if (err < 0) {
		FUNC0(&umc->dev, "can't allocate resource range "
			"%016Lx to %016Lx: %d\n",
			(unsigned long long)umc->resource.start,
			(unsigned long long)umc->resource.end,
			err);
		goto error_request_resource;
	}

	err = FUNC1(&umc->dev);
	if (err < 0)
		goto error_device_register;
	return 0;

error_device_register:
	FUNC2(&umc->resource);
error_request_resource:
	return err;
}