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
typedef  int /*<<< orphan*/  u64 ;
struct zram {int disksize; int /*<<< orphan*/  init_lock; int /*<<< orphan*/  disk; scalar_t__ init_done; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 struct zram* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	int ret;
	u64 disksize;
	struct zram *zram = FUNC1(dev);

	ret = FUNC5(buf, 10, &disksize);
	if (ret)
		return ret;

	FUNC2(&zram->init_lock);
	if (zram->init_done) {
		FUNC6(&zram->init_lock);
		FUNC3("Cannot change disksize for initialized device\n");
		return -EBUSY;
	}

	zram->disksize = FUNC0(disksize);
	FUNC4(zram->disk, zram->disksize >> SECTOR_SHIFT);
	FUNC6(&zram->init_lock);

	return len;
}