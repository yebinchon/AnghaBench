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
struct btrfs_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_device*) ; 

void FUNC2(struct btrfs_device *dev, int index)
{
	FUNC0(dev, index);
	FUNC1(dev);
}