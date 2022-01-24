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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pipe_users ; 
 int pipe_version ; 
 int /*<<< orphan*/  pipe_version_lock ; 
 int /*<<< orphan*/  pipe_version_rpc_waitqueue ; 
 int /*<<< orphan*/  pipe_version_waitqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, int new_version)
{
	int ret = 0;

	FUNC2(&pipe_version_lock);
	if (pipe_version < 0) {
		/* First open of any gss pipe determines the version: */
		pipe_version = new_version;
		FUNC1(&pipe_version_rpc_waitqueue);
		FUNC4(&pipe_version_waitqueue);
	} else if (pipe_version != new_version) {
		/* Trying to open a pipe of a different version */
		ret = -EBUSY;
		goto out;
	}
	FUNC0(&pipe_users);
out:
	FUNC3(&pipe_version_lock);
	return ret;

}