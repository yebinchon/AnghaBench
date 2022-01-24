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
struct super_block {int dummy; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; } ;
struct cifs_tcon {scalar_t__ ipc; int /*<<< orphan*/  resource_id; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int /*<<< orphan*/  mnt_gid; int /*<<< orphan*/  mnt_uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  uniqueid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct cifs_sb_info* FUNC1 (struct super_block*) ; 
 long ENOMEM ; 
 struct inode* FUNC2 (long) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 char* FUNC6 (struct cifs_sb_info*,struct cifs_tcon*) ; 
 long FUNC7 (struct inode**,char*,int /*<<< orphan*/ *,struct super_block*,int,int /*<<< orphan*/ *) ; 
 long FUNC8 (struct inode**,char*,struct super_block*,int) ; 
 int /*<<< orphan*/  cifs_ipc_inode_ops ; 
 struct cifs_tcon* FUNC9 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

struct inode *FUNC12(struct super_block *sb)
{
	int xid;
	struct cifs_sb_info *cifs_sb = FUNC1(sb);
	struct inode *inode = NULL;
	long rc;
	char *full_path;
	struct cifs_tcon *tcon = FUNC9(cifs_sb);

	full_path = FUNC6(cifs_sb, tcon);
	if (full_path == NULL)
		return FUNC2(-ENOMEM);

	xid = FUNC3();
	if (tcon->unix_ext)
		rc = FUNC8(&inode, full_path, sb, xid);
	else
		rc = FUNC7(&inode, full_path, NULL, sb,
						xid, NULL);

	if (!inode) {
		inode = FUNC2(rc);
		goto out;
	}

#ifdef CONFIG_CIFS_FSCACHE
	/* populate tcon->resource_id */
	tcon->resource_id = CIFS_I(inode)->uniqueid;
#endif

	if (rc && tcon->ipc) {
		FUNC5(1, "ipc connection - fake read inode");
		inode->i_mode |= S_IFDIR;
		inode->i_nlink = 2;
		inode->i_op = &cifs_ipc_inode_ops;
		inode->i_fop = &simple_dir_operations;
		inode->i_uid = cifs_sb->mnt_uid;
		inode->i_gid = cifs_sb->mnt_gid;
	} else if (rc) {
		FUNC10(inode);
		inode = FUNC2(rc);
	}

out:
	FUNC11(full_path);
	/* can not call macro FreeXid here since in a void func
	 * TODO: This is no longer true
	 */
	FUNC4(xid);
	return inode;
}