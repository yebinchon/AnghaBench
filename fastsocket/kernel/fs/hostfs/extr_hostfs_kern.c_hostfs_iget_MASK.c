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
struct super_block {int dummy; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 long ENOMEM ; 
 struct inode* FUNC0 (long) ; 
 int I_NEW ; 
 long FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb)
{
	struct inode *inode;
	long ret;

	inode = FUNC3(sb, 0);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (inode->i_state & I_NEW) {
		ret = FUNC1(inode);
		if (ret < 0) {
			FUNC2(inode);
			return FUNC0(ret);
		}
		FUNC4(inode);
	}
	return inode;
}