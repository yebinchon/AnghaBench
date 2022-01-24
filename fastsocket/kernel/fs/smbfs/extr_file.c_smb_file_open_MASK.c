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
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  openers; } ;

/* Variables and functions */
 int O_ACCMODE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file * file)
{
	int result;
	struct dentry *dentry = file->f_path.dentry;
	int smb_mode = (file->f_mode & O_ACCMODE) - 1;

	FUNC1();
	result = FUNC2(dentry, smb_mode);
	if (result)
		goto out;
	FUNC0(inode)->openers++;
out:
	FUNC3();
	return result;
}