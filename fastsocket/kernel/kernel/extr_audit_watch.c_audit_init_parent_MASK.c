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
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct nameidata {TYPE_2__ path; } ;
struct audit_parent {int /*<<< orphan*/  wdata; scalar_t__ flags; int /*<<< orphan*/  watches; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_IN_WATCH ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct audit_parent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_ih ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct audit_parent* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct audit_parent *FUNC8(struct nameidata *ndp)
{
	struct audit_parent *parent;
	s32 wd;

	parent = FUNC6(sizeof(*parent), GFP_KERNEL);
	if (FUNC7(!parent))
		return FUNC0(-ENOMEM);

	FUNC1(&parent->watches);
	parent->flags = 0;

	FUNC5(&parent->wdata);
	/* grab a ref so inotify watch hangs around until we take audit_filter_mutex */
	FUNC3(&parent->wdata);
	wd = FUNC4(audit_ih, &parent->wdata,
			       ndp->path.dentry->d_inode, AUDIT_IN_WATCH);
	if (wd < 0) {
		FUNC2(&parent->wdata);
		return FUNC0(wd);
	}

	return parent;
}