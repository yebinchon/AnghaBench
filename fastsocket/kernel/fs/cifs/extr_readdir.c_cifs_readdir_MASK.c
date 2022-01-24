#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int dummy; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {int f_pos; struct cifsFileInfo* private_data; TYPE_5__ f_path; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_12__ {char* ntwrk_buf_start; int index_of_last_entry; int /*<<< orphan*/  info_level; int /*<<< orphan*/  emptyDir; int /*<<< orphan*/  endOfSearch; } ;
struct cifsFileInfo {TYPE_6__ srch_inf; int /*<<< orphan*/  tlink; } ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_10__ {TYPE_3__* d_parent; TYPE_1__* d_inode; int /*<<< orphan*/  d_sb; } ;
struct TYPE_9__ {TYPE_2__* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DT_DIR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  UNICODE_NAME_MAX ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (char*,struct file*,int /*<<< orphan*/  (*) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ),void*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cifsFileInfo*) ; 
 int FUNC7 (int,struct cifs_tcon*,struct file*,char**,int*) ; 
 int FUNC8 (int,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct smb_hdr*) ; 
 struct cifs_tcon* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct file *file, void *direntry, filldir_t filldir)
{
	int rc = 0;
	int xid, i;
	struct cifs_sb_info *cifs_sb;
	struct cifs_tcon *pTcon;
	struct cifsFileInfo *cifsFile = NULL;
	char *current_entry;
	int num_to_fill = 0;
	char *tmp_buf = NULL;
	char *end_of_smb;
	unsigned int max_len;

	xid = FUNC2();

	cifs_sb = FUNC0(file->f_path.dentry->d_sb);

	/*
	 * Ensure FindFirst doesn't fail before doing filldir() for '.' and
	 * '..'. Otherwise we won't be able to notify VFS in case of failure.
	 */
	if (file->private_data == NULL) {
		rc = FUNC8(xid, file);
		FUNC4(1, "initiate cifs search rc %d", rc);
		if (rc)
			goto rddir2_exit;
	}

	switch ((int) file->f_pos) {
	case 0:
		if (filldir(direntry, ".", 1, file->f_pos,
		     file->f_path.dentry->d_inode->i_ino, DT_DIR) < 0) {
			FUNC3(1, "Filldir for current dir failed");
			rc = -ENOMEM;
			break;
		}
		file->f_pos++;
	case 1:
		if (filldir(direntry, "..", 2, file->f_pos,
		     file->f_path.dentry->d_parent->d_inode->i_ino, DT_DIR) < 0) {
			FUNC3(1, "Filldir for parent dir failed");
			rc = -ENOMEM;
			break;
		}
		file->f_pos++;
	default:
		/* 1) If search is active,
			is in current search buffer?
			if it before then restart search
			if after then keep searching till find it */

		if (file->private_data == NULL) {
			rc = -EINVAL;
			FUNC1(xid);
			return rc;
		}
		cifsFile = file->private_data;
		if (cifsFile->srch_inf.endOfSearch) {
			if (cifsFile->srch_inf.emptyDir) {
				FUNC4(1, "End of search, empty dir");
				rc = 0;
				break;
			}
		} /* else {
			cifsFile->invalidHandle = true;
			CIFSFindClose(xid, pTcon, cifsFile->netfid);
		} */

		pTcon = FUNC13(cifsFile->tlink);
		rc = FUNC7(xid, pTcon, file,
				&current_entry, &num_to_fill);
		if (rc) {
			FUNC4(1, "fce error %d", rc);
			goto rddir2_exit;
		} else if (current_entry != NULL) {
			FUNC4(1, "entry %lld found", file->f_pos);
		} else {
			FUNC4(1, "could not find entry");
			goto rddir2_exit;
		}
		FUNC4(1, "loop through %d times filling dir for net buf %p",
			num_to_fill, cifsFile->srch_inf.ntwrk_buf_start);
		max_len = FUNC12((struct smb_hdr *)
				cifsFile->srch_inf.ntwrk_buf_start);
		end_of_smb = cifsFile->srch_inf.ntwrk_buf_start + max_len;

		tmp_buf = FUNC10(UNICODE_NAME_MAX, GFP_KERNEL);
		if (tmp_buf == NULL) {
			rc = -ENOMEM;
			break;
		}

		for (i = 0; (i < num_to_fill) && (rc == 0); i++) {
			if (current_entry == NULL) {
				/* evaluate whether this case is an error */
				FUNC3(1, "past SMB end,  num to fill %d i %d",
					  num_to_fill, i);
				break;
			}
			/* if buggy server returns . and .. late do
			we want to check for that here? */
			rc = FUNC5(current_entry, file,
					filldir, direntry, tmp_buf, max_len);
			if (rc == -EOVERFLOW) {
				rc = 0;
				break;
			}

			file->f_pos++;
			if (file->f_pos ==
				cifsFile->srch_inf.index_of_last_entry) {
				FUNC4(1, "last entry in buf at pos %lld %s",
					file->f_pos, tmp_buf);
				FUNC6(current_entry, cifsFile);
				break;
			} else
				current_entry =
					FUNC11(current_entry, end_of_smb,
						cifsFile->srch_inf.info_level);
		}
		FUNC9(tmp_buf);
		break;
	} /* end switch */

rddir2_exit:
	FUNC1(xid);
	return rc;
}