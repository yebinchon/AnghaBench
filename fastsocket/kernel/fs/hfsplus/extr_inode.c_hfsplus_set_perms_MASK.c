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
struct inode {int i_flags; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct hfsplus_perm {void* dev; void* group; void* owner; int /*<<< orphan*/  mode; int /*<<< orphan*/  userflags; int /*<<< orphan*/  rootflags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  userflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFSPLUS_FLG_APPEND ; 
 int /*<<< orphan*/  HFSPLUS_FLG_IMMUTABLE ; 
 TYPE_1__ FUNC0 (struct inode*) ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct inode *inode, struct hfsplus_perm *perms)
{
	if (inode->i_flags & S_IMMUTABLE)
		perms->rootflags |= HFSPLUS_FLG_IMMUTABLE;
	else
		perms->rootflags &= ~HFSPLUS_FLG_IMMUTABLE;
	if (inode->i_flags & S_APPEND)
		perms->rootflags |= HFSPLUS_FLG_APPEND;
	else
		perms->rootflags &= ~HFSPLUS_FLG_APPEND;
	perms->userflags = FUNC0(inode).userflags;
	perms->mode = FUNC1(inode->i_mode);
	perms->owner = FUNC2(inode->i_uid);
	perms->group = FUNC2(inode->i_gid);
	perms->dev = FUNC2(FUNC0(inode).dev);
}