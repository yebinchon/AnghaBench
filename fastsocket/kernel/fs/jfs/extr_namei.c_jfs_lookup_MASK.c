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
typedef  int uint ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_ino; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_4__ {int mntflag; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  JFS_LOOKUP ; 
 int JFS_OS2 ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC6 (struct inode*,struct dentry*) ; 
 int FUNC7 (struct inode*,struct component_name*,scalar_t__*,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct component_name*) ; 
 int FUNC9 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  jfs_ci_dentry_operations ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

__attribute__((used)) static struct dentry *FUNC14(struct inode *dip, struct dentry *dentry, struct nameidata *nd)
{
	struct btstack btstack;
	ino_t inum;
	struct inode *ip;
	struct component_name key;
	const char *name = dentry->d_name.name;
	int len = dentry->d_name.len;
	int rc;

	FUNC12("jfs_lookup: name = %s", name);

	if (FUNC3(dip->i_sb)->mntflag & JFS_OS2)
		dentry->d_op = &jfs_ci_dentry_operations;

	if ((name[0] == '.') && (len == 1))
		inum = dip->i_ino;
	else if (FUNC13(name, "..") == 0)
		inum = FUNC4(dip);
	else {
		if ((rc = FUNC9(&key, dentry)))
			return FUNC1(rc);
		rc = FUNC7(dip, &key, &inum, &btstack, JFS_LOOKUP);
		FUNC8(&key);
		if (rc == -ENOENT) {
			FUNC5(dentry, NULL);
			return NULL;
		} else if (rc) {
			FUNC10("jfs_lookup: dtSearch returned %d", rc);
			return FUNC1(rc);
		}
	}

	ip = FUNC11(dip->i_sb, inum);
	if (FUNC2(ip)) {
		FUNC10("jfs_lookup: iget failed on inum %d", (uint) inum);
		return FUNC0(ip);
	}

	dentry = FUNC6(ip, dentry);

	if (dentry && (FUNC3(dip->i_sb)->mntflag & JFS_OS2))
		dentry->d_op = &jfs_ci_dentry_operations;

	return dentry;
}