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
struct zram {int /*<<< orphan*/  init_lock; scalar_t__ init_done; int /*<<< orphan*/  disk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct block_device {scalar_t__ bd_holders; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct zram*) ; 
 struct block_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zram* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	int ret;
	unsigned long do_reset;
	struct zram *zram;
	struct block_device *bdev;

	zram = FUNC2(dev);
	bdev = FUNC1(zram->disk, 0);

	/* Do not reset an active device! */
	if (bdev->bd_holders)
		return -EBUSY;

	ret = FUNC5(buf, 10, &do_reset);
	if (ret)
		return ret;

	if (!do_reset)
		return -EINVAL;

	/* Make sure all pending I/O is finished */
	if (bdev)
		FUNC4(bdev);

	FUNC3(&zram->init_lock);
	if (zram->init_done)
		FUNC0(zram);
	FUNC6(&zram->init_lock);

	return len;
}