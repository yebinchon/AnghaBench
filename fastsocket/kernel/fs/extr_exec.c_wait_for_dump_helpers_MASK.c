#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pipe_inode_info {int readers; int /*<<< orphan*/  writers; int /*<<< orphan*/  wait; int /*<<< orphan*/  fasync_readers; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct pipe_inode_info* i_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct file *file)
{
	struct pipe_inode_info *pipe;

	pipe = file->f_path.dentry->d_inode->i_pipe;

	FUNC1(pipe);
	pipe->readers++;
	pipe->writers--;
	FUNC4(&pipe->wait);
	FUNC0(&pipe->fasync_readers, SIGIO, POLL_IN);
	FUNC2(pipe);

	/*
	 * We actually want wait_event_freezable() but then we need
	 * to clear TIF_SIGPENDING and improve dump_interrupted().
	 */
	FUNC3(pipe->wait, pipe->readers == 1);

	FUNC1(pipe);
	pipe->readers--;
	pipe->writers++;
	FUNC2(pipe);
}