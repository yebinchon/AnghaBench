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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry)
{
	struct dentry *expiring;

	expiring = FUNC2(dentry);
	if (!expiring)
		return FUNC1(dentry);
	else {
		/*
		 * If we are racing with expire the request might not
		 * be quite complete, but the directory has been removed
		 * so it must have been successful, just wait for it.
		 */
		FUNC1(expiring);
		FUNC0(expiring);
		FUNC3(expiring);
	}
	return 0;
}