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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dentry *dentry)
{
	FUNC2(dentry);
	FUNC3(dentry);
	FUNC4(&dcache_lock);
	FUNC4(&dentry->d_lock);
	if (FUNC1(&dentry->d_count) == 2)
		FUNC0(dentry);
	FUNC5(&dentry->d_lock);
	FUNC5(&dcache_lock);
}