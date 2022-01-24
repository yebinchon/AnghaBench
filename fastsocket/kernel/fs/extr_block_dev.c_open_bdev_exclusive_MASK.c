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
struct block_device {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int EACCES ; 
 struct block_device* FUNC0 (int) ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*,void*) ; 
 scalar_t__ FUNC3 (struct block_device*) ; 
 int FUNC4 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,int) ; 
 struct block_device* FUNC6 (char const*) ; 

struct block_device *FUNC7(const char *path, fmode_t mode, void *holder)
{
	struct block_device *bdev;
	int error = 0;

	bdev = FUNC6(path);
	if (FUNC1(bdev))
		return bdev;

	error = FUNC4(bdev, mode);
	if (error)
		return FUNC0(error);
	error = -EACCES;
	if ((mode & FMODE_WRITE) && FUNC3(bdev))
		goto blkdev_put;
	error = FUNC2(bdev, holder);
	if (error)
		goto blkdev_put;

	return bdev;
	
blkdev_put:
	FUNC5(bdev, mode);
	return FUNC0(error);
}