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
struct ext3_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,struct ext3_iloc*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,struct ext3_iloc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC4(handle_t *handle, struct inode *inode)
{
	struct ext3_iloc iloc;
	int err;

	FUNC2();
	FUNC3(inode, _RET_IP_);
	err = FUNC1(handle, inode, &iloc);
	if (!err)
		err = FUNC0(handle, inode, &iloc);
	return err;
}