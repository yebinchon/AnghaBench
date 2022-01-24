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
struct reiserfs_de_head {scalar_t__ deh_objectid; } ;
struct dentry {scalar_t__ d_inode; struct dentry* d_parent; int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {scalar_t__ k_objectid; } ;
struct TYPE_3__ {struct dentry* priv_root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct dentry *dir,
				   struct reiserfs_de_head *deh)
{
	struct dentry *privroot = FUNC1(dir->d_sb)->priv_root;
	if (FUNC2(dir->d_sb))
		return 0;
	return (dir == dir->d_parent && privroot->d_inode &&
	        deh->deh_objectid == FUNC0(privroot->d_inode)->k_objectid);
}