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
struct file {int /*<<< orphan*/  f_dentry; } ;
struct cftype {int (* release ) (struct inode*,struct file*) ;} ;

/* Variables and functions */
 struct cftype* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct cftype *cft = FUNC0(file->f_dentry);
	if (cft->release)
		return cft->release(inode, file);
	return 0;
}