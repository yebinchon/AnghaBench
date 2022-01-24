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

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 int FUNC1 (struct block_device*,int) ; 

__attribute__((used)) static int FUNC2(struct block_device *bdev)
{
	FUNC0(bdev);
	return FUNC1(bdev, FMODE_READ|FMODE_WRITE);
}