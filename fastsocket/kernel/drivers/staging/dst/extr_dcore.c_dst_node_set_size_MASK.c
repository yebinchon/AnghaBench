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
struct dst_node {int size; int /*<<< orphan*/  disk; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 struct block_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct dst_node *n)
{
	struct block_device *bdev;

	FUNC5(n->disk, n->size >> 9);

	bdev = FUNC0(n->disk, 0);
	if (bdev) {
		FUNC3(&bdev->bd_inode->i_mutex);
		FUNC2(bdev->bd_inode, n->size);
		FUNC4(&bdev->bd_inode->i_mutex);
		FUNC1(bdev);
	}
}