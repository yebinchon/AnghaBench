#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qstr {char* name; int len; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (TYPE_1__*,struct qstr*) ; 

struct dentry *FUNC4(struct dentry *child)
{
	struct qstr dotdot = {.name = "..", .len = 2};
	unsigned long ino = FUNC3(child->d_inode, &dotdot);
	if (!ino)
		return FUNC0(-ENOENT);
	return FUNC1(FUNC2(child->d_inode->i_sb, ino));
}