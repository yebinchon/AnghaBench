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
struct list_head {int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; } ;
struct TYPE_2__ {struct list_head d_child; } ;
struct dentry {int /*<<< orphan*/  d_subdirs; TYPE_1__ d_u; struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dentry *dentry)
{
	struct list_head *d_child;
	struct dentry *parent;

	/* flags for dentrys in the root are handled elsewhere */
	if (FUNC0(dentry->d_parent))
		return;

	FUNC1(dentry);

	parent = dentry->d_parent;
	/* only consider parents below dentrys in the root */
	if (FUNC0(parent->d_parent))
		return;
	d_child = &dentry->d_u.d_child;
	FUNC3(&dcache_lock);
	/* Set parent managed if it's becoming empty */
	if (d_child->next == &parent->d_subdirs &&
	    d_child->prev == &parent->d_subdirs)
		FUNC2(parent);
	FUNC4(&dcache_lock);
	return;
}