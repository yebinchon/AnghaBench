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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct qstr {char* name; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; int /*<<< orphan*/  f_dentry; TYPE_2__ f_path; struct cifsFileInfo* private_data; } ;
struct dentry {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_fattr {int /*<<< orphan*/  cf_dtype; scalar_t__ cf_uniqueid; int /*<<< orphan*/  cf_flags; } ;
struct TYPE_7__ {scalar_t__ info_level; int /*<<< orphan*/  unicode; } ;
struct cifsFileInfo {TYPE_3__ srch_inf; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int (* filldir_t ) (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_8__ {int /*<<< orphan*/  basic; } ;
struct TYPE_5__ {struct super_block* d_sb; } ;
typedef  int /*<<< orphan*/  FIND_FILE_STANDARD_INFO ;
typedef  TYPE_4__ FILE_UNIX_INFO ;
typedef  int /*<<< orphan*/  FILE_DIRECTORY_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cifs_fattr*) ; 
 int /*<<< orphan*/  CIFS_FATTR_NEED_REVAL ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 int CIFS_MOUNT_SERVER_INUM ; 
 struct cifs_sb_info* FUNC1 (struct super_block*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  ROOT_I ; 
 scalar_t__ SMB_FIND_FILE_INFO_STANDARD ; 
 scalar_t__ SMB_FIND_FILE_UNIX ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 int FUNC5 (char*,struct cifsFileInfo*) ; 
 int FUNC6 (struct qstr*,char*,scalar_t__,int /*<<< orphan*/ ,struct cifs_sb_info*,unsigned int,scalar_t__*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ ,struct qstr*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 scalar_t__ FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(char *pfindEntry, struct file *file, filldir_t filldir,
			void *direntry, char *scratch_buf, unsigned int max_len)
{
	int rc = 0;
	struct qstr qstring;
	struct cifsFileInfo *pCifsF;
	u64    inum;
	ino_t  ino;
	struct super_block *sb;
	struct cifs_sb_info *cifs_sb;
	struct dentry *tmp_dentry;
	struct cifs_fattr fattr;

	/* get filename and len into qstring */
	/* get dentry */
	/* decide whether to create and populate ionde */
	if ((direntry == NULL) || (file == NULL))
		return -EINVAL;

	pCifsF = file->private_data;

	if ((scratch_buf == NULL) || (pfindEntry == NULL) || (pCifsF == NULL))
		return -ENOENT;

	rc = FUNC5(pfindEntry, pCifsF);
	/* skip . and .. since we added them first */
	if (rc != 0)
		return 0;

	sb = file->f_path.dentry->d_sb;
	cifs_sb = FUNC1(sb);

	qstring.name = scratch_buf;
	rc = FUNC6(&qstring, pfindEntry,
			pCifsF->srch_inf.info_level,
			pCifsF->srch_inf.unicode, cifs_sb,
			max_len, &inum /* returned */);

	if (rc)
		return rc;

	if (pCifsF->srch_inf.info_level == SMB_FIND_FILE_UNIX)
		FUNC10(&fattr,
				 &((FILE_UNIX_INFO *) pfindEntry)->basic,
				 cifs_sb);
	else if (pCifsF->srch_inf.info_level == SMB_FIND_FILE_INFO_STANDARD)
		FUNC8(&fattr, (FIND_FILE_STANDARD_INFO *)
					pfindEntry, cifs_sb);
	else
		FUNC4(&fattr, (FILE_DIRECTORY_INFO *)
					pfindEntry, cifs_sb);

	if (inum && (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)) {
		fattr.cf_uniqueid = inum;
	} else {
		fattr.cf_uniqueid = FUNC12(sb, ROOT_I);
		FUNC3(cifs_sb);
	}

	if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS) &&
	    FUNC0(&fattr))
		/*
		 * trying to get the type and mode can be slow,
		 * so just call those regular files for now, and mark
		 * for reval
		 */
		fattr.cf_flags |= CIFS_FATTR_NEED_REVAL;

	ino = FUNC9(fattr.cf_uniqueid);
	tmp_dentry = FUNC7(file->f_dentry, &qstring, &fattr);

	rc = filldir(direntry, qstring.name, qstring.len, file->f_pos,
		     ino, fattr.cf_dtype);

	/*
	 * we can not return filldir errors to the caller since they are
	 * "normal" when the stat blocksize is too small - we return remapped
	 * error instead
	 *
	 * FIXME: This looks bogus. filldir returns -EOVERFLOW in the above
	 * case already. Why should we be clobbering other errors from it?
	 */
	if (rc) {
		FUNC2(1, "filldir rc = %d", rc);
		rc = -EOVERFLOW;
	}
	FUNC11(tmp_dentry);
	return rc;
}