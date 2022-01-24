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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_count; TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dentry * dentry)
{
	int isdir = 0;
	/*
	 * Are we the only user?
	 */
	FUNC6(&dcache_lock);
	FUNC6(&dentry->d_lock);
	isdir = FUNC0(dentry->d_inode->i_mode);
	if (FUNC2(&dentry->d_count) == 1) {
		FUNC4(dentry);
		FUNC5(dentry, isdir);
		return;
	}

	if (!FUNC3(dentry))
		FUNC1(dentry);

	FUNC7(&dentry->d_lock);
	FUNC7(&dcache_lock);

	FUNC5(dentry, isdir);
}