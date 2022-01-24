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
struct nameidata {int dummy; } ;
struct ext2_inode_info {scalar_t__ i_data; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct ext2_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,char*) ; 

__attribute__((used)) static void *FUNC2(struct dentry *dentry, struct nameidata *nd)
{
	struct ext2_inode_info *ei = FUNC0(dentry->d_inode);
	FUNC1(nd, (char *)ei->i_data);
	return NULL;
}