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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_count; TYPE_1__ d_name; scalar_t__ d_inode; struct configfs_dirent* d_fsdata; int /*<<< orphan*/  d_parent; } ;
struct configfs_dirent {int /*<<< orphan*/  s_sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct dentry * d)
{
	struct dentry * parent = FUNC2(d->d_parent);
	struct configfs_dirent * sd;

	sd = d->d_fsdata;
	FUNC7(&configfs_dirent_lock);
	FUNC4(&sd->s_sibling);
	FUNC8(&configfs_dirent_lock);
	FUNC1(sd);
	if (d->d_inode)
		FUNC6(parent->d_inode,d);

	FUNC5(" o %s removing done (%d)\n",d->d_name.name,
		 FUNC0(&d->d_count));

	FUNC3(parent);
}