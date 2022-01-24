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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_blocks; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC6(handle_t *handle,
				struct inode *inode,
				struct buffer_head *fe_bh,
				u64 new_i_size)
{
	int status;

	FUNC1();
	FUNC0(inode, new_i_size);
	inode->i_blocks = FUNC4(inode);
	inode->i_ctime = inode->i_mtime = CURRENT_TIME;

	status = FUNC5(handle, inode, fe_bh);
	if (status < 0) {
		FUNC2(status);
		goto bail;
	}

bail:
	FUNC3(status);
	return status;
}