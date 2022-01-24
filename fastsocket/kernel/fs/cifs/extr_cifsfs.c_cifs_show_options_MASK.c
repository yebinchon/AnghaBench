#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {TYPE_5__* mnt_sb; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct seq_file {int dummy; } ;
struct cifs_tcon {int treeName; scalar_t__ unix_ext; scalar_t__ retry; scalar_t__ nocase; scalar_t__ seal; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int mnt_uid; int mnt_gid; int prepath; int mnt_backupuid; int mnt_backupgid; int rsize; int wsize; int actimeo; int /*<<< orphan*/  mnt_dir_mode; int /*<<< orphan*/  mnt_file_mode; } ;
struct TYPE_9__ {int s_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  srcaddr; } ;
struct TYPE_7__ {int user_name; int domainName; TYPE_3__* server; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int CIFS_MOUNT_CIFS_ACL ; 
 int CIFS_MOUNT_CIFS_BACKUPGID ; 
 int CIFS_MOUNT_CIFS_BACKUPUID ; 
 int CIFS_MOUNT_DYNPERM ; 
 int CIFS_MOUNT_FSCACHE ; 
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 int CIFS_MOUNT_MULTIUSER ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 int CIFS_MOUNT_NOSSYNC ; 
 int CIFS_MOUNT_NO_BRL ; 
 int CIFS_MOUNT_NO_PERM ; 
 int CIFS_MOUNT_NO_XATTR ; 
 int CIFS_MOUNT_OVERR_GID ; 
 int CIFS_MOUNT_OVERR_UID ; 
 int CIFS_MOUNT_POSIX_PATHS ; 
 int CIFS_MOUNT_RWPIDFORWARD ; 
 int CIFS_MOUNT_SERVER_INUM ; 
 int CIFS_MOUNT_SET_UID ; 
 int CIFS_MOUNT_UNX_EMUL ; 
 struct cifs_sb_info* FUNC0 (TYPE_5__*) ; 
 int HZ ; 
 int MS_POSIXACL ; 
 struct cifs_tcon* FUNC1 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int
FUNC6(struct seq_file *s, struct vfsmount *m)
{
	struct cifs_sb_info *cifs_sb = FUNC0(m->mnt_sb);
	struct cifs_tcon *tcon = FUNC1(cifs_sb);
	struct sockaddr *srcaddr;
	srcaddr = (struct sockaddr *)&tcon->ses->server->srcaddr;

	FUNC4(s, tcon->ses->server);
	FUNC3(s, cifs_sb);

	FUNC5(s, ",unc=%s", tcon->treeName);

	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER)
		FUNC5(s, ",multiuser");
	else if (tcon->ses->user_name)
		FUNC5(s, ",username=%s", tcon->ses->user_name);

	if (tcon->ses->domainName)
		FUNC5(s, ",domain=%s", tcon->ses->domainName);

	if (srcaddr->sa_family != AF_UNSPEC) {
		struct sockaddr_in *saddr4;
		struct sockaddr_in6 *saddr6;
		saddr4 = (struct sockaddr_in *)srcaddr;
		saddr6 = (struct sockaddr_in6 *)srcaddr;
		if (srcaddr->sa_family == AF_INET6)
			FUNC5(s, ",srcaddr=%pI6c",
				   &saddr6->sin6_addr);
		else if (srcaddr->sa_family == AF_INET)
			FUNC5(s, ",srcaddr=%pI4",
				   &saddr4->sin_addr.s_addr);
		else
			FUNC5(s, ",srcaddr=BAD-AF:%i",
				   (int)(srcaddr->sa_family));
	}

	FUNC5(s, ",uid=%u", cifs_sb->mnt_uid);
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID)
		FUNC5(s, ",forceuid");
	else
		FUNC5(s, ",noforceuid");

	FUNC5(s, ",gid=%u", cifs_sb->mnt_gid);
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID)
		FUNC5(s, ",forcegid");
	else
		FUNC5(s, ",noforcegid");

	FUNC2(s, tcon->ses->server);

	if (!tcon->unix_ext)
		FUNC5(s, ",file_mode=0%o,dir_mode=0%o",
					   cifs_sb->mnt_file_mode,
					   cifs_sb->mnt_dir_mode);
	if (tcon->seal)
		FUNC5(s, ",seal");
	if (tcon->nocase)
		FUNC5(s, ",nocase");
	if (tcon->retry)
		FUNC5(s, ",hard");
	if (tcon->unix_ext)
		FUNC5(s, ",unix");
	else
		FUNC5(s, ",nounix");
	if (cifs_sb->prepath)
		FUNC5(s, ",prepath=%s", cifs_sb->prepath);
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS)
		FUNC5(s, ",posixpaths");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SET_UID)
		FUNC5(s, ",setuids");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)
		FUNC5(s, ",serverino");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RWPIDFORWARD)
		FUNC5(s, ",rwpidforward");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL)
		FUNC5(s, ",forcemand");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_XATTR)
		FUNC5(s, ",nouser_xattr");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR)
		FUNC5(s, ",mapchars");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UNX_EMUL)
		FUNC5(s, ",sfu");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_BRL)
		FUNC5(s, ",nobrl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL)
		FUNC5(s, ",cifsacl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM)
		FUNC5(s, ",dynperm");
	if (m->mnt_sb->s_flags & MS_POSIXACL)
		FUNC5(s, ",acl");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		FUNC5(s, ",mfsymlinks");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE)
		FUNC5(s, ",fsc");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOSSYNC)
		FUNC5(s, ",nostrictsync");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NO_PERM)
		FUNC5(s, ",noperm");
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPUID)
		FUNC5(s, ",backupuid=%u", cifs_sb->mnt_backupuid);
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPGID)
		FUNC5(s, ",backupgid=%u", cifs_sb->mnt_backupgid);

	FUNC5(s, ",rsize=%u", cifs_sb->rsize);
	FUNC5(s, ",wsize=%u", cifs_sb->wsize);
	/* convert actimeo and display it in seconds */
	FUNC5(s, ",actimeo=%lu", cifs_sb->actimeo / HZ);

	return 0;
}