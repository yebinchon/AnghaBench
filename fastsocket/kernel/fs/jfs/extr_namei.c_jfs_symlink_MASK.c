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
typedef  int /*<<< orphan*/  unchar ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_5__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct super_block {int dummy; } ;
struct metapage {int /*<<< orphan*/ * data; } ;
struct inode {int i_mode; int i_size; scalar_t__ i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; struct super_block* i_sb; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_8__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  mode2; int /*<<< orphan*/ * i_inline; int /*<<< orphan*/  ixpxd; } ;
struct TYPE_7__ {int bsize; int l2bsize; int nbperpage; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_PWMAP ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int IDATASIZE ; 
 int /*<<< orphan*/  INLINEEA ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  PSIZE ; 
 int FUNC3 (struct inode*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC6 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC8 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct component_name*,struct dentry*) ; 
 struct metapage* FUNC11 (struct inode*,int,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  jfs_aops ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  jfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int FUNC21 (char const*) ; 
 struct tblock* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC29 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct inode *dip, struct dentry *dentry,
		const char *name)
{
	int rc;
	tid_t tid;
	ino_t ino = 0;
	struct component_name dname;
	int ssize;		/* source pathname size */
	struct btstack btstack;
	struct inode *ip = dentry->d_inode;
	unchar *i_fastsymlink;
	s64 xlen = 0;
	int bmask = 0, xsize;
	s64 extent = 0, xaddr;
	struct metapage *mp;
	struct super_block *sb;
	struct tblock *tblk;

	struct inode *iplist[2];

	FUNC14("jfs_symlink: dip:0x%p name:%s", dip, name);

	ssize = FUNC21(name) + 1;

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */

	if ((rc = FUNC10(&dname, dentry)))
		goto out1;

	/*
	 * allocate on-disk/in-memory inode for symbolic link:
	 * (iAlloc() returns new, locked inode)
	 */
	ip = FUNC12(dip, S_IFLNK | 0777);
	if (FUNC0(ip)) {
		rc = FUNC3(ip);
		goto out2;
	}

	tid = FUNC24(dip->i_sb, 0);

	FUNC19(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC19(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC15(tid, ip, dip);
	if (rc)
		goto out3;

	tblk = FUNC22(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	/* fix symlink access permission
	 * (dir_create() ANDs in the u.u_cmask,
	 * but symlinks really need to be 777 access)
	 */
	ip->i_mode |= 0777;

	/*
	 * write symbolic link target path name
	 */
	FUNC28(tid, ip);

	/*
	 * write source path name inline in on-disk inode (fast symbolic link)
	 */

	if (ssize <= IDATASIZE) {
		ip->i_op = &jfs_symlink_inode_operations;

		i_fastsymlink = FUNC1(ip)->i_inline;
		FUNC17(i_fastsymlink, name, ssize);
		ip->i_size = ssize - 1;

		/*
		 * if symlink is > 128 bytes, we don't have the space to
		 * store inline extended attributes
		 */
		if (ssize > sizeof (FUNC1(ip)->i_inline))
			FUNC1(ip)->mode2 &= ~INLINEEA;

		FUNC14("jfs_symlink: fast symlink added  ssize:%d name:%s ",
			 ssize, name);
	}
	/*
	 * write source path name in a single extent
	 */
	else {
		FUNC14("jfs_symlink: allocate extent ip:0x%p", ip);

		ip->i_op = &page_symlink_inode_operations;
		ip->i_mapping->a_ops = &jfs_aops;

		/*
		 * even though the data of symlink object (source
		 * path name) is treated as non-journaled user data,
		 * it is read/written thru buffer cache for performance.
		 */
		sb = ip->i_sb;
		bmask = FUNC2(sb)->bsize - 1;
		xsize = (ssize + bmask) & ~bmask;
		xaddr = 0;
		xlen = xsize >> FUNC2(sb)->l2bsize;
		if ((rc = FUNC29(tid, ip, 0, 0, xlen, &xaddr, 0))) {
			FUNC23(tid, 0);
			goto out3;
		}
		extent = xaddr;
		ip->i_size = ssize - 1;
		while (ssize) {
			/* This is kind of silly since PATH_MAX == 4K */
			int copy_size = FUNC18(ssize, PSIZE);

			mp = FUNC11(ip, xaddr, PSIZE, 1);

			if (mp == NULL) {
				FUNC30(tid, ip, 0, COMMIT_PWMAP);
				rc = -EIO;
				FUNC23(tid, 0);
				goto out3;
			}
			FUNC17(mp->data, name, copy_size);
			FUNC7(mp);
			ssize -= copy_size;
			name += copy_size;
			xaddr += FUNC2(sb)->nbperpage;
		}
	}

	/*
	 * create entry for symbolic link in parent directory
	 */
	rc = FUNC6(dip, &dname, &ino, &btstack, JFS_CREATE);
	if (rc == 0) {
		ino = ip->i_ino;
		rc = FUNC5(tid, dip, &dname, &ino, &btstack);
	}
	if (rc) {
		if (xlen)
			FUNC30(tid, ip, 0, COMMIT_PWMAP);
		FUNC23(tid, 0);
		/* discard new inode */
		goto out3;
	}

	FUNC16(ip);

	dip->i_ctime = dip->i_mtime = CURRENT_TIME;
	FUNC16(dip);
	/*
	 * commit update of parent directory and link object
	 */

	iplist[0] = dip;
	iplist[1] = ip;
	rc = FUNC25(tid, 2, &iplist[0], 0);

      out3:
	FUNC26(tid);
	FUNC20(&FUNC1(ip)->commit_mutex);
	FUNC20(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC9(ip);
		ip->i_nlink = 0;
		FUNC27(ip);
		FUNC13(ip);
	} else {
		FUNC4(dentry, ip);
		FUNC27(ip);
	}

      out2:
	FUNC8(&dname);

      out1:
	FUNC14("jfs_symlink: rc:%d", rc);
	return rc;
}