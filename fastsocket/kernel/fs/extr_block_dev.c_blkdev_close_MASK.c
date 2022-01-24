#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; TYPE_1__* f_mapping; } ;
struct block_device {struct file* bd_holder; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode * inode, struct file * filp)
{
	struct block_device *bdev = FUNC0(filp->f_mapping->host);
	if (bdev->bd_holder == filp)
		FUNC1(bdev);
	return FUNC2(bdev, filp->f_mode);
}