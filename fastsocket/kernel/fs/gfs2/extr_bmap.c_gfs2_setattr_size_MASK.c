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
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

int FUNC9(struct inode *inode, u64 newsize)
{
	int ret;
	u64 oldsize;

	FUNC0(!FUNC2(inode->i_mode));

	ret = FUNC7(inode, newsize);
	if (ret)
		return ret;

	ret = FUNC5(inode);
	if (ret)
		return ret;

	ret = FUNC6(FUNC1(inode));
	if (ret)
		goto out;

	oldsize = inode->i_size;
	if (newsize >= oldsize) {
		ret = FUNC3(inode, newsize);
		goto out;
	}

	ret = FUNC4(inode, oldsize, newsize);
out:
	FUNC8(inode);
	return ret;
}