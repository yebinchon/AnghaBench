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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGI_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct inode *inode)
{
	if (!FUNC0(inode->i_mode))
		return 0;
	return FUNC1(inode, SGI_ACL_DEFAULT);
}