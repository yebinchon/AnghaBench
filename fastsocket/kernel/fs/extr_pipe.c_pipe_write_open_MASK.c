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
struct inode {int /*<<< orphan*/  i_mutex; TYPE_1__* i_pipe; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  writers; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *filp)
{
	int ret = -ENOENT;

	FUNC0(&inode->i_mutex);

	if (inode->i_pipe) {
		ret = 0;
		inode->i_pipe->writers++;
	}

	FUNC1(&inode->i_mutex);

	return ret;
}