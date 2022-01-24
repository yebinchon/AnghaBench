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
struct super_block {TYPE_2__* s_root; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int DQUOT_LIMITS_ENABLED ; 
 int DQUOT_USAGE_ENABLED ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

int FUNC9(struct super_block *sb, char *qf_name,
		int format_id, int type)
{
	struct dentry *dentry;
	int error;

	FUNC4(&sb->s_root->d_inode->i_mutex);
	dentry = FUNC3(qf_name, sb->s_root, FUNC7(qf_name));
	FUNC5(&sb->s_root->d_inode->i_mutex);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	if (!dentry->d_inode) {
		error = -ENOENT;
		goto out;
	}

	error = FUNC6(dentry);
	if (!error)
		error = FUNC8(dentry->d_inode, type, format_id,
				DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED);

out:
	FUNC2(dentry);
	return error;
}