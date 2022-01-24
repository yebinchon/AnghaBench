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
struct path {struct dentry* member_1; int /*<<< orphan*/  member_0; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOMOYO_TYPE_RMDIR_ACL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct path *parent, struct dentry *dentry)
{
	struct path path = { parent->mnt, dentry };
	return FUNC0(FUNC1(),
				       TOMOYO_TYPE_RMDIR_ACL,
				       &path);
}