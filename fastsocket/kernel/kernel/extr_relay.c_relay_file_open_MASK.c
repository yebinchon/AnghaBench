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
struct rchan_buf {int /*<<< orphan*/  kref; } ;
struct inode {struct rchan_buf* i_private; } ;
struct file {struct rchan_buf* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct rchan_buf *buf = inode->i_private;
	FUNC0(&buf->kref);
	filp->private_data = buf;

	return FUNC1(inode, filp);
}