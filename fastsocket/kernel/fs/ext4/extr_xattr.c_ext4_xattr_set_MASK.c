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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,int,char const*,void const*,size_t,int) ; 

int
FUNC7(struct inode *inode, int name_index, const char *name,
	       const void *value, size_t value_len, int flags)
{
	handle_t *handle;
	int error, retries = 0;

retry:
	handle = FUNC3(inode, FUNC0(inode->i_sb));
	if (FUNC1(handle)) {
		error = FUNC2(handle);
	} else {
		int error2;

		error = FUNC6(handle, inode, name_index, name,
					      value, value_len, flags);
		error2 = FUNC4(handle);
		if (error == -ENOSPC &&
		    FUNC5(inode->i_sb, &retries))
			goto retry;
		if (error == 0)
			error = error2;
	}

	return error;
}