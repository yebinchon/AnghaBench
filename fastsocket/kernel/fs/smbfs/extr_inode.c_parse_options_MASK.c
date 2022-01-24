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
struct TYPE_2__ {int /*<<< orphan*/  remote_name; int /*<<< orphan*/  local_name; } ;
struct smb_mount_data_kernel {unsigned long version; unsigned long uid; unsigned long gid; unsigned long file_mode; unsigned long dir_mode; unsigned long ttl; unsigned long flags; TYPE_1__ codepage; } ;

/* Variables and functions */
 unsigned long SMB_MOUNT_DMODE ; 
 unsigned long SMB_MOUNT_FMODE ; 
 unsigned long SMB_MOUNT_GID ; 
 unsigned long SMB_MOUNT_UID ; 
 unsigned long SMB_MOUNT_VERSION ; 
 int /*<<< orphan*/  SMB_NLS_MAXNAMELEN ; 
 unsigned long S_IFDIR ; 
 unsigned long S_IFREG ; 
 unsigned long S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  opts ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ,char**,char**,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct smb_mount_data_kernel *mnt, char *options)
{
	int c;
	unsigned long flags;
	unsigned long value;
	char *optarg;
	char *optopt;

	flags = 0;
	while ( (c = FUNC2("smbfs", &options, opts,
				&optopt, &optarg, &flags, &value)) > 0) {

		FUNC0("'%s' -> '%s'\n", optopt, optarg ? optarg : "<none>");
		switch (c) {
		case 1:
			/* got a "flag" option */
			break;
		case 'v':
			if (value != SMB_MOUNT_VERSION) {
			FUNC1 ("smbfs: Bad mount version %ld, expected %d\n",
				value, SMB_MOUNT_VERSION);
				return 0;
			}
			mnt->version = value;
			break;
		case 'u':
			mnt->uid = value;
			flags |= SMB_MOUNT_UID;
			break;
		case 'g':
			mnt->gid = value;
			flags |= SMB_MOUNT_GID;
			break;
		case 'f':
			mnt->file_mode = (value & S_IRWXUGO) | S_IFREG;
			flags |= SMB_MOUNT_FMODE;
			break;
		case 'd':
			mnt->dir_mode = (value & S_IRWXUGO) | S_IFDIR;
			flags |= SMB_MOUNT_DMODE;
			break;
		case 'i':
			FUNC3(mnt->codepage.local_name, optarg, 
				SMB_NLS_MAXNAMELEN);
			break;
		case 'c':
			FUNC3(mnt->codepage.remote_name, optarg,
				SMB_NLS_MAXNAMELEN);
			break;
		case 't':
			mnt->ttl = value;
			break;
		default:
			FUNC1 ("smbfs: Unrecognized mount option %s\n",
				optopt);
			return -1;
		}
	}
	mnt->flags = flags;
	return c;
}