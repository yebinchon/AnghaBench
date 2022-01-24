#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct nameidata {TYPE_1__ path; int /*<<< orphan*/  last; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,struct nameidata*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC3(struct nameidata *nd)
{
	int err;

	err = FUNC2(nd->path.dentry->d_inode, MAY_EXEC);
	if (err)
		return FUNC0(err);
	return FUNC1(&nd->last, nd->path.dentry, nd);
}