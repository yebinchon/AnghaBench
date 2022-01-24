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
struct super_block {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_xattr; TYPE_2__* s_root; } ;
struct dentry {TYPE_3__* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_mount_opt; struct dentry* xattr_root; struct dentry* priv_root; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  MS_POSIXACL ; 
 int MS_RDONLY ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  REISERFS_POSIXACL ; 
 TYPE_4__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  REISERFS_XATTRS_USER ; 
 int /*<<< orphan*/  XAROOT_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  reiserfs_xattr_handlers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct super_block*) ; 

int FUNC11(struct super_block *s, int mount_flags)
{
	int err = 0;
	struct dentry *privroot = FUNC2(s)->priv_root;

	err = FUNC10(s);
	if (err)
		goto error;

	if (!privroot->d_inode && !(mount_flags & MS_RDONLY)) {
		FUNC6(&s->s_root->d_inode->i_mutex);
		err = FUNC4(FUNC2(s)->priv_root);
		FUNC7(&s->s_root->d_inode->i_mutex);
	}

	if (privroot->d_inode) {
		s->s_xattr = reiserfs_xattr_handlers;
		FUNC6(&privroot->d_inode->i_mutex);
		if (!FUNC2(s)->xattr_root) {
			struct dentry *dentry;
			dentry = FUNC5(XAROOT_NAME, privroot,
						FUNC9(XAROOT_NAME));
			if (!FUNC0(dentry))
				FUNC2(s)->xattr_root = dentry;
			else
				err = FUNC1(dentry);
		}
		FUNC7(&privroot->d_inode->i_mutex);
	}

error:
	if (err) {
		FUNC3(REISERFS_XATTRS_USER, &(FUNC2(s)->s_mount_opt));
		FUNC3(REISERFS_POSIXACL, &(FUNC2(s)->s_mount_opt));
	}

	/* The super_block MS_POSIXACL must mirror the (no)acl mount option. */
	if (FUNC8(s))
		s->s_flags |= MS_POSIXACL;
	else
		s->s_flags &= ~MS_POSIXACL;

	return err;
}