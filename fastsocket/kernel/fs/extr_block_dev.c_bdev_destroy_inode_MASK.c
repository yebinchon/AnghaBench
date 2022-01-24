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
struct inode {int dummy; } ;
struct bdev_inode {int dummy; } ;

/* Variables and functions */
 struct bdev_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  bdev_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bdev_inode*) ; 

__attribute__((used)) static void FUNC2(struct inode *inode)
{
	struct bdev_inode *bdi = FUNC0(inode);

	FUNC1(bdev_cachep, bdi);
}