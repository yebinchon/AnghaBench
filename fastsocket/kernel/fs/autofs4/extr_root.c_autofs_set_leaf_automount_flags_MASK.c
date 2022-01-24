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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static void FUNC3(struct dentry *dentry)
{
	struct dentry *parent;

	/* root and dentrys in the root are already handled */
	if (FUNC0(dentry->d_parent))
		return;

	FUNC2(dentry);

	parent = dentry->d_parent;
	/* only consider parents below dentrys in the root */
	if (FUNC0(parent->d_parent))
		return;
	FUNC1(parent);
	return;
}