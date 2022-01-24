#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  cconn; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file_lock {int fl_flags; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int ENOLCK ; 
 int FL_POSIX ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,int,struct file_lock*) ; 

int FUNC4(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = file->f_mapping->host;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	if (!(fl->fl_flags & FL_POSIX))
		return -ENOLCK;
	if (FUNC2(inode))
		return -ENOLCK;

	return FUNC3(osb->cconn, FUNC0(inode)->ip_blkno, file, cmd, fl);
}