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
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int FUNC1 (struct inode*,int) ; 

__attribute__((used)) static inline int FUNC2(struct inode *dir, struct dentry *child)
{
	if (child->d_inode)
		return -EEXIST;
	if (FUNC0(dir))
		return -ENOENT;
	return FUNC1(dir, MAY_WRITE | MAY_EXEC);
}