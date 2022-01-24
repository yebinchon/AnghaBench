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
struct super_block {int dummy; } ;
struct kstatfs {scalar_t__ f_ffree; scalar_t__ f_files; int /*<<< orphan*/  f_namelen; int /*<<< orphan*/  f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_2__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;

/* Variables and functions */
 int CAP_NT_SMBS ; 
 int CAP_UNIX ; 
 int FUNC0 (int,struct cifs_tcon*,struct kstatfs*) ; 
 int FUNC1 (int,struct cifs_tcon*,struct kstatfs*) ; 
 int /*<<< orphan*/  CIFS_MAGIC_NUMBER ; 
 int CIFS_POSIX_EXTENSIONS ; 
 struct cifs_sb_info* FUNC2 (struct super_block*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int FUNC5 (int,struct cifs_tcon*,struct kstatfs*) ; 
 struct cifs_tcon* FUNC6 (struct cifs_sb_info*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct cifs_sb_info *cifs_sb = FUNC2(sb);
	struct cifs_tcon *tcon = FUNC6(cifs_sb);
	int rc = -EOPNOTSUPP;
	int xid;

	xid = FUNC4();

	buf->f_type = CIFS_MAGIC_NUMBER;

	/*
	 * PATH_MAX may be too long - it would presumably be total path,
	 * but note that some servers (includinng Samba 3) have a shorter
	 * maximum path.
	 *
	 * Instead could get the real value via SMB_QUERY_FS_ATTRIBUTE_INFO.
	 */
	buf->f_namelen = PATH_MAX;
	buf->f_files = 0;	/* undefined */
	buf->f_ffree = 0;	/* unlimited */

	/*
	 * We could add a second check for a QFS Unix capability bit
	 */
	if ((tcon->ses->capabilities & CAP_UNIX) &&
	    (CIFS_POSIX_EXTENSIONS & FUNC7(tcon->fsUnixInfo.Capability)))
		rc = FUNC1(xid, tcon, buf);

	/*
	 * Only need to call the old QFSInfo if failed on newer one,
	 * e.g. by OS/2.
	 **/
	if (rc && (tcon->ses->capabilities & CAP_NT_SMBS))
		rc = FUNC0(xid, tcon, buf);

	/*
	 * Some old Windows servers also do not support level 103, retry with
	 * older level one if old server failed the previous call or we
	 * bypassed it because we detected that this was an older LANMAN sess
	 */
	if (rc)
		rc = FUNC5(xid, tcon, buf);

	FUNC3(xid);
	return 0;
}