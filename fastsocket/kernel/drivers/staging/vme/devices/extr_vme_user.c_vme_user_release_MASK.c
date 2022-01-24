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
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC0(inode->i_rdev);

	FUNC1(&image[minor].sem);

	/* Decrement user count */
	image[minor].users--;

	FUNC2(&image[minor].sem);

	return 0;
}