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
typedef  int /*<<< orphan*/  tid_t ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_count; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 void* CURRENT_TIME ; 
 int EMLINK ; 
 int ENOENT ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ JFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC4 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct component_name*) ; 
 int FUNC6 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct dentry *old_dentry,
	     struct inode *dir, struct dentry *dentry)
{
	int rc;
	tid_t tid;
	struct inode *ip = old_dentry->d_inode;
	ino_t ino;
	struct component_name dname;
	struct btstack btstack;
	struct inode *iplist[2];

	FUNC9("jfs_link: %s %s", old_dentry->d_name.name,
		 dentry->d_name.name);

	if (ip->i_nlink == JFS_LINK_MAX)
		return -EMLINK;

	if (ip->i_nlink == 0)
		return -ENOENT;

	tid = FUNC13(ip->i_sb, 0);

	FUNC11(&FUNC0(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC11(&FUNC0(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	/*
	 * scan parent directory for entry/freespace
	 */
	if ((rc = FUNC6(&dname, dentry)))
		goto out;

	if ((rc = FUNC4(dir, &dname, &ino, &btstack, JFS_CREATE)))
		goto free_dname;

	/*
	 * create entry for new link in parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC3(tid, dir, &dname, &ino, &btstack)))
		goto free_dname;

	/* update object inode */
	FUNC7(ip);		/* for new link */
	ip->i_ctime = CURRENT_TIME;
	dir->i_ctime = dir->i_mtime = CURRENT_TIME;
	FUNC10(dir);
	FUNC1(&ip->i_count);

	iplist[0] = ip;
	iplist[1] = dir;
	rc = FUNC14(tid, 2, &iplist[0], 0);

	if (rc) {
		ip->i_nlink--; /* never instantiated */
		FUNC8(ip);
	} else
		FUNC2(dentry, ip);

      free_dname:
	FUNC5(&dname);

      out:
	FUNC15(tid);

	FUNC12(&FUNC0(ip)->commit_mutex);
	FUNC12(&FUNC0(dir)->commit_mutex);

	FUNC9("jfs_link: rc:%d", rc);
	return rc;
}