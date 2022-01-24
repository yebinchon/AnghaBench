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
struct super_block {int s_time_gran; int s_blocksize_bits; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/  s_flags; } ;
struct inode {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_4__ {TYPE_1__* ses; } ;
struct TYPE_3__ {int capabilities; } ;

/* Variables and functions */
 int CAP_LARGE_FILES ; 
 int /*<<< orphan*/  CIFS_MAGIC_NUMBER ; 
 int /*<<< orphan*/  CIFS_MAX_MSGSIZE ; 
 int CIFS_MOUNT_POSIXACL ; 
 int CIFS_MOUNT_SERVER_INUM ; 
 struct cifs_sb_info* FUNC0 (struct super_block*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  MAX_NON_LFS ; 
 int /*<<< orphan*/  MS_POSIXACL ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  cifs_export_ops ; 
 struct inode* FUNC5 (struct super_block*) ; 
 TYPE_2__* FUNC6 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  cifs_super_ops ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int
FUNC9(struct super_block *sb)
{
	struct inode *inode;
	struct cifs_sb_info *cifs_sb;
	int rc = 0;

	cifs_sb = FUNC0(sb);

	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIXACL)
		sb->s_flags |= MS_POSIXACL;

	if (FUNC6(cifs_sb)->ses->capabilities & CAP_LARGE_FILES)
		sb->s_maxbytes = MAX_LFS_FILESIZE;
	else
		sb->s_maxbytes = MAX_NON_LFS;

	/* BB FIXME fix time_gran to be larger for LANMAN sessions */
	sb->s_time_gran = 100;

	sb->s_magic = CIFS_MAGIC_NUMBER;
	sb->s_op = &cifs_super_ops;
	sb->s_blocksize = CIFS_MAX_MSGSIZE;
	sb->s_blocksize_bits = 14;	/* default 2**14 = CIFS_MAX_MSGSIZE */
	inode = FUNC5(sb);

	if (FUNC1(inode)) {
		rc = FUNC2(inode);
		inode = NULL;
		goto out_no_root;
	}

	sb->s_root = FUNC7(inode);

	if (!sb->s_root) {
		rc = -ENOMEM;
		goto out_no_root;
	}

#ifdef CIFS_NFSD_EXPORT
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) {
		cFYI(1, "export ops supported");
		sb->s_export_op = &cifs_export_ops;
	}
#endif /* CIFS_NFSD_EXPORT */

	return 0;

out_no_root:
	FUNC3(1, "cifs_read_super: get root inode failed");
	if (inode)
		FUNC8(inode);

	return rc;
}