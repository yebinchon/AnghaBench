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
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  treeName; } ;

/* Variables and functions */
 int CIFS_MOUNT_SERVER_INUM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct cifs_sb_info*) ; 

void
FUNC2(struct cifs_sb_info *cifs_sb)
{
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) {
		cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_SERVER_INUM;
		FUNC0(1, "Autodisabling the use of server inode numbers on "
			   "%s. This server doesn't seem to support them "
			   "properly. Hardlinks will not be recognized on this "
			   "mount. Consider mounting with the \"noserverino\" "
			   "option to silence this message.",
			   FUNC1(cifs_sb)->treeName);
	}
}