#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; int /*<<< orphan*/  i_private; } ;

/* Variables and functions */
#define  S_IFDIR 129 
#define  S_IFLNK 128 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static void FUNC7(struct dentry *dentry, struct dentry *parent)
{
	int ret = 0;

	if (FUNC1(dentry)) {
		if (dentry->d_inode) {
			FUNC2(dentry);
			switch (dentry->d_inode->i_mode & S_IFMT) {
			case S_IFDIR:
				ret = FUNC5(parent->d_inode, dentry);
				break;
			case S_IFLNK:
				FUNC4(dentry->d_inode->i_private);
				/* fall through */
			default:
				FUNC6(parent->d_inode, dentry);
				break;
			}
			if (!ret)
				FUNC0(dentry);
			FUNC3(dentry);
		}
	}
}