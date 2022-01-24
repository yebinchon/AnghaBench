#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct tcon_link {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifs_io_parms {int /*<<< orphan*/  length; scalar_t__ offset; struct cifs_tcon* tcon; int /*<<< orphan*/  pid; int /*<<< orphan*/  netfid; } ;
struct cifs_fattr {unsigned int cf_eof; int cf_mode; int /*<<< orphan*/  cf_dtype; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_5__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_4__ {scalar_t__ EndOfFile; } ;
typedef  TYPE_1__ FILE_ALL_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifs_fattr*) ; 
 int FUNC1 (char*,unsigned int,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct cifs_tcon*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,struct cifs_io_parms*,unsigned int*,char**,int*) ; 
 int /*<<< orphan*/  CIFS_MF_SYMLINK_FILE_SIZE ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_NO_BUFFER ; 
 int /*<<< orphan*/  CREATE_NOT_DIR ; 
 int /*<<< orphan*/  DT_LNK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC5 (struct tcon_link*) ; 
 int FUNC6 (struct tcon_link*) ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC7 (struct tcon_link*) ; 
 struct tcon_link* FUNC8 (struct cifs_sb_info*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC12 (struct tcon_link*) ; 

int
FUNC13(struct cifs_fattr *fattr,
		   const unsigned char *path,
		   struct cifs_sb_info *cifs_sb, int xid)
{
	int rc;
	int oplock = 0;
	__u16 netfid = 0;
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	struct cifs_io_parms io_parms;
	u8 *buf;
	char *pbuf;
	unsigned int bytes_read = 0;
	int buf_type = CIFS_NO_BUFFER;
	unsigned int link_len = 0;
	FILE_ALL_INFO file_info;

	if (!FUNC0(fattr))
		/* it's not a symlink */
		return 0;

	tlink = FUNC8(cifs_sb);
	if (FUNC5(tlink))
		return FUNC6(tlink);
	pTcon = FUNC12(tlink);

	rc = FUNC3(xid, pTcon, path, FILE_OPEN, GENERIC_READ,
			 CREATE_NOT_DIR, &netfid, &oplock, &file_info,
			 cifs_sb->local_nls,
			 cifs_sb->mnt_cifs_flags &
				CIFS_MOUNT_MAP_SPECIAL_CHR);
	if (rc != 0)
		goto out;

	if (file_info.EndOfFile != FUNC9(CIFS_MF_SYMLINK_FILE_SIZE)) {
		FUNC2(xid, pTcon, netfid);
		/* it's not a symlink */
		goto out;
	}

	buf = FUNC11(CIFS_MF_SYMLINK_FILE_SIZE, GFP_KERNEL);
	if (!buf) {
		rc = -ENOMEM;
		goto out;
	}
	pbuf = buf;
	io_parms.netfid = netfid;
	io_parms.pid = current->tgid;
	io_parms.tcon = pTcon;
	io_parms.offset = 0;
	io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;

	rc = FUNC4(xid, &io_parms, &bytes_read, &pbuf, &buf_type);
	FUNC2(xid, pTcon, netfid);
	if (rc != 0) {
		FUNC10(buf);
		goto out;
	}

	rc = FUNC1(buf, bytes_read, &link_len, NULL);
	FUNC10(buf);
	if (rc == -EINVAL) {
		/* it's not a symlink */
		rc = 0;
		goto out;
	}

	if (rc != 0)
		goto out;

	/* it is a symlink */
	fattr->cf_eof = link_len;
	fattr->cf_mode &= ~S_IFMT;
	fattr->cf_mode |= S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
	fattr->cf_dtype = DT_LNK;
out:
	FUNC7(tlink);
	return rc;
}