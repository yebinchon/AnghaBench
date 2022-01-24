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
struct pipe_inode_info {int /*<<< orphan*/  fasync_writers; int /*<<< orphan*/  fasync_readers; int /*<<< orphan*/  wait; scalar_t__ writers; scalar_t__ readers; } ;
struct inode {int /*<<< orphan*/  i_mutex; struct pipe_inode_info* i_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, int decr, int decw)
{
	struct pipe_inode_info *pipe;

	FUNC2(&inode->i_mutex);
	pipe = inode->i_pipe;
	pipe->readers -= decr;
	pipe->writers -= decw;

	if (!pipe->readers && !pipe->writers) {
		FUNC0(inode);
	} else {
		FUNC4(&pipe->wait);
		FUNC1(&pipe->fasync_readers, SIGIO, POLL_IN);
		FUNC1(&pipe->fasync_writers, SIGIO, POLL_OUT);
	}
	FUNC3(&inode->i_mutex);

	return 0;
}