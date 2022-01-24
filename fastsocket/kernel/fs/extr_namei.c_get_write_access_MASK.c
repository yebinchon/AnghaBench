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
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_writecount; } ;

/* Variables and functions */
 int ETXTBSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode * inode)
{
	FUNC2(&inode->i_lock);
	if (FUNC1(&inode->i_writecount) < 0) {
		FUNC3(&inode->i_lock);
		return -ETXTBSY;
	}
	FUNC0(&inode->i_writecount);
	FUNC3(&inode->i_lock);

	return 0;
}