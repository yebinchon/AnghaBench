#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_3__* s_root; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_8__ {struct dentry* priv_root; } ;
struct TYPE_7__ {TYPE_2__* d_inode; int /*<<< orphan*/ * d_op; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  PRIVROOT_NAME ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_4__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  S_PRIVATE ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xattr_lookup_poison_ops ; 

int FUNC8(struct super_block *s)
{
	struct dentry *dentry;
	int err = 0;

	/* If we don't have the privroot located yet - go find it */
	FUNC4(&s->s_root->d_inode->i_mutex);
	dentry = FUNC3(PRIVROOT_NAME, s->s_root,
				FUNC7(PRIVROOT_NAME));
	if (!FUNC0(dentry)) {
		FUNC2(s)->priv_root = dentry;
		if (!FUNC6(s))
			s->s_root->d_op = &xattr_lookup_poison_ops;
		if (dentry->d_inode)
			dentry->d_inode->i_flags |= S_PRIVATE;
	} else
		err = FUNC1(dentry);
	FUNC5(&s->s_root->d_inode->i_mutex);

	return err;
}