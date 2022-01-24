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

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IIO_DEV_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_chrdev_idr ; 
 int /*<<< orphan*/  iio_idr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(void)
{
	int ret, val;

idr_again:
	if (FUNC4(FUNC1(&iio_chrdev_idr, GFP_KERNEL) == 0))
		return -ENOMEM;
	FUNC2(&iio_idr_lock);
	ret = FUNC0(&iio_chrdev_idr, NULL, &val);
	FUNC3(&iio_idr_lock);
	if (FUNC4(ret == -EAGAIN))
		goto idr_again;
	else if (FUNC4(ret))
		return ret;
	if (val > IIO_DEV_MAX)
		return -ENOMEM;
	return val;
}