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
struct dentry {int /*<<< orphan*/  d_alias; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dentry* FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC8(struct dentry *entry, struct inode *inode)
{
	struct dentry *result;

	FUNC0(!FUNC4(&entry->d_alias));

	FUNC6(&dcache_lock);
	result = FUNC1(entry, inode);
	FUNC7(&dcache_lock);

	if (!result) {
		FUNC5(entry, inode);
		return NULL;
	}

	FUNC0(!FUNC2(result));
	FUNC3(inode);
	return result;
}