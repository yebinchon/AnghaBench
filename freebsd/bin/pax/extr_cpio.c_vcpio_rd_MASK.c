#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  void* time_t ;
typedef  void* off_t ;
typedef  scalar_t__ nlink_t ;
typedef  int mode_t ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ gid_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_8__ {int st_mode; int st_size; void* st_rdev; void* st_dev; scalar_t__ st_nlink; void* st_mtime; void* st_atime; void* st_ctime; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_ino; } ;
struct TYPE_10__ {long pad; int nlen; char* ln_name; TYPE_1__ sb; scalar_t__ ln_nlen; scalar_t__ crc; } ;
struct TYPE_9__ {int /*<<< orphan*/  c_namesize; int /*<<< orphan*/  c_chksum; int /*<<< orphan*/  c_rmin; int /*<<< orphan*/  c_rmaj; int /*<<< orphan*/  c_min; int /*<<< orphan*/  c_maj; int /*<<< orphan*/  c_nlink; int /*<<< orphan*/  c_filesize; int /*<<< orphan*/  c_mtime; int /*<<< orphan*/  c_gid; int /*<<< orphan*/  c_uid; int /*<<< orphan*/  c_mode; int /*<<< orphan*/  c_ino; } ;
typedef  TYPE_2__ HD_VCPIO ;
typedef  TYPE_3__ ARCHD ;

/* Variables and functions */
 int C_IFMT ; 
 int C_ISLNK ; 
 int /*<<< orphan*/  HEX ; 
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 long FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ docrc ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (void*) ; 
 scalar_t__ FUNC9 (char*,int) ; 

int
FUNC10(ARCHD *arcn, char *buf)
{
	HD_VCPIO *hd;
	dev_t devminor;
	dev_t devmajor;
	int nsz;

	/*
	 * during the id phase it was determined if we were using CRC, use the
	 * proper id routine.
	 */
	if (docrc) {
		if (FUNC5(buf, sizeof(HD_VCPIO)) < 0)
			return(-1);
	} else {
		if (FUNC9(buf, sizeof(HD_VCPIO)) < 0)
			return(-1);
	}

	hd = (HD_VCPIO *)buf;
	arcn->pad = 0L;

	/*
	 * extract the hex ascii fields from the header
	 */
	arcn->sb.st_ino = (ino_t)FUNC2(hd->c_ino, sizeof(hd->c_ino), HEX);
	arcn->sb.st_mode = (mode_t)FUNC2(hd->c_mode, sizeof(hd->c_mode), HEX);
	arcn->sb.st_uid = (uid_t)FUNC2(hd->c_uid, sizeof(hd->c_uid), HEX);
	arcn->sb.st_gid = (gid_t)FUNC2(hd->c_gid, sizeof(hd->c_gid), HEX);
#ifdef NET2_STAT
	arcn->sb.st_mtime = (time_t)asc_ul(hd->c_mtime,sizeof(hd->c_mtime),HEX);
#else
	arcn->sb.st_mtime = (time_t)FUNC3(hd->c_mtime,sizeof(hd->c_mtime),HEX);
#endif
	arcn->sb.st_ctime = arcn->sb.st_atime = arcn->sb.st_mtime;
#ifdef NET2_STAT
	arcn->sb.st_size = (off_t)asc_ul(hd->c_filesize,
	    sizeof(hd->c_filesize), HEX);
#else
	arcn->sb.st_size = (off_t)FUNC3(hd->c_filesize,
	    sizeof(hd->c_filesize), HEX);
#endif
	arcn->sb.st_nlink = (nlink_t)FUNC2(hd->c_nlink, sizeof(hd->c_nlink),
	    HEX);
	devmajor = (dev_t)FUNC2(hd->c_maj, sizeof(hd->c_maj), HEX);
	devminor = (dev_t)FUNC2(hd->c_min, sizeof(hd->c_min), HEX);
	arcn->sb.st_dev = FUNC0(devmajor, devminor);
	devmajor = (dev_t)FUNC2(hd->c_rmaj, sizeof(hd->c_maj), HEX);
	devminor = (dev_t)FUNC2(hd->c_rmin, sizeof(hd->c_min), HEX);
	arcn->sb.st_rdev = FUNC0(devmajor, devminor);
	arcn->crc = FUNC2(hd->c_chksum, sizeof(hd->c_chksum), HEX);

	/*
	 * check the length of the file name, if ok read it in, return -1 if
	 * bogus
	 */
	if ((nsz = (int)FUNC2(hd->c_namesize,sizeof(hd->c_namesize),HEX)) < 2)
		return(-1);
	arcn->nlen = nsz - 1;
	if (FUNC7(arcn, nsz) < 0)
		return(-1);

	/*
	 * skip padding. header + filename is aligned to 4 byte boundaries
	 */
	if (FUNC8((off_t)(FUNC1(sizeof(HD_VCPIO) + nsz))) < 0)
		return(-1);

	/*
	 * if not a link (or a file with no data), calculate pad size (for
	 * padding which follows the file data), clear the link name and return
	 */
	if (((arcn->sb.st_mode&C_IFMT) != C_ISLNK)||(arcn->sb.st_size == 0)) {
		/*
		 * we have a valid header (not a link)
		 */
		arcn->ln_nlen = 0;
		arcn->ln_name[0] = '\0';
		arcn->pad = FUNC1(arcn->sb.st_size);
		return(FUNC4(arcn));
	}

	/*
	 * read in the link name and skip over the padding
	 */
	if ((FUNC6(arcn) < 0) ||
	    (FUNC8((off_t)(FUNC1(arcn->sb.st_size))) < 0))
		return(-1);

	/*
	 * we have a valid header (with a link)
	 */
	return(FUNC4(arcn));
}