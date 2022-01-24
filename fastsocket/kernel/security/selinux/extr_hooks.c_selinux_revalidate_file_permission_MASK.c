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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_flags; TYPE_2__ f_path; } ;
struct cred {int dummy; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int MAY_APPEND ; 
 int MAY_WRITE ; 
 int O_APPEND ; 
 struct cred* FUNC0 () ; 
 int FUNC1 (struct cred const*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, int mask)
{
	const struct cred *cred = FUNC0();
	struct inode *inode = file->f_path.dentry->d_inode;

	/* file_mask_to_av won't add FILE__WRITE if MAY_APPEND is set */
	if ((file->f_flags & O_APPEND) && (mask & MAY_WRITE))
		mask |= MAY_APPEND;

	return FUNC1(cred, file,
			     FUNC2(inode->i_mode, mask));
}