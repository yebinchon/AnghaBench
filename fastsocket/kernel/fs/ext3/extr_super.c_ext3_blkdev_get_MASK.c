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
struct super_block {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block_device* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct block_device *FUNC5(dev_t dev, struct super_block *sb)
{
	struct block_device *bdev;
	char b[BDEVNAME_SIZE];

	bdev = FUNC4(dev, FMODE_READ|FMODE_WRITE);
	if (FUNC0(bdev))
		goto fail;
	return bdev;

fail:
	FUNC3(sb, KERN_ERR, "error: failed to open journal device %s: %ld",
		FUNC2(dev, b), FUNC1(bdev));

	return NULL;
}