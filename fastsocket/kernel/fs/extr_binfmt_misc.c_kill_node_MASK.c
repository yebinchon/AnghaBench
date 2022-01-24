#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct dentry* dentry; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_nlink; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  bm_mnt ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  entries_lock ; 
 int /*<<< orphan*/  entry_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Node *e)
{
	struct dentry *dentry;

	FUNC4(&entries_lock);
	dentry = e->dentry;
	if (dentry) {
		FUNC2(&e->list);
		e->dentry = NULL;
	}
	FUNC5(&entries_lock);

	if (dentry) {
		dentry->d_inode->i_nlink--;
		FUNC0(dentry);
		FUNC1(dentry);
		FUNC3(&bm_mnt, &entry_count);
	}
}