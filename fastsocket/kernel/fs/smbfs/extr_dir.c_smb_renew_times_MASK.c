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
struct dentry {int /*<<< orphan*/  d_lock; struct dentry* d_parent; int /*<<< orphan*/  d_time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct dentry * dentry)
{
	FUNC1(dentry);
	FUNC3(&dentry->d_lock);
	for (;;) {
		struct dentry *parent;

		dentry->d_time = jiffies;
		if (FUNC0(dentry))
			break;
		parent = dentry->d_parent;
		FUNC1(parent);
		FUNC4(&dentry->d_lock);
		FUNC2(dentry);
		dentry = parent;
		FUNC3(&dentry->d_lock);
	}
	FUNC4(&dentry->d_lock);
	FUNC2(dentry);
}