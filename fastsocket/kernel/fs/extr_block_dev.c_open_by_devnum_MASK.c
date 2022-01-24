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
typedef  int /*<<< orphan*/  fmode_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct block_device* FUNC0 (int) ; 
 struct block_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct block_device*,int /*<<< orphan*/ ) ; 

struct block_device *FUNC3(dev_t dev, fmode_t mode)
{
	struct block_device *bdev = FUNC1(dev);
	int err = -ENOMEM;
	if (bdev)
		err = FUNC2(bdev, mode);
	return err ? FUNC0(err) : bdev;
}