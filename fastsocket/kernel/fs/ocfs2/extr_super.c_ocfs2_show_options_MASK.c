#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct ocfs2_super {unsigned long s_mount_opt; scalar_t__ preferred_slot; scalar_t__ s_atime_quantum; int osb_commit_interval; int local_alloc_bits; int s_clustersize_bits; scalar_t__* osb_cluster_stack; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ OCFS2_DEFAULT_ATIME_QUANTUM ; 
 unsigned int OCFS2_DEFAULT_LOCAL_ALLOC_SIZE ; 
 scalar_t__ OCFS2_INVALID_SLOT ; 
 unsigned long OCFS2_MOUNT_BARRIER ; 
 unsigned long OCFS2_MOUNT_DATA_WRITEBACK ; 
 unsigned long OCFS2_MOUNT_ERRORS_PANIC ; 
 unsigned long OCFS2_MOUNT_GRPQUOTA ; 
 unsigned long OCFS2_MOUNT_HB_LOCAL ; 
 unsigned long OCFS2_MOUNT_INODE64 ; 
 unsigned long OCFS2_MOUNT_LOCALFLOCKS ; 
 unsigned long OCFS2_MOUNT_NOINTR ; 
 unsigned long OCFS2_MOUNT_NOUSERXATTR ; 
 unsigned long OCFS2_MOUNT_POSIX_ACL ; 
 unsigned long OCFS2_MOUNT_USRQUOTA ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_STACK_LABEL_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, struct vfsmount *mnt)
{
	struct ocfs2_super *osb = FUNC0(mnt->mnt_sb);
	unsigned long opts = osb->s_mount_opt;
	unsigned int local_alloc_megs;

	if (opts & OCFS2_MOUNT_HB_LOCAL)
		FUNC1(s, ",_netdev,heartbeat=local");
	else
		FUNC1(s, ",heartbeat=none");

	if (opts & OCFS2_MOUNT_NOINTR)
		FUNC1(s, ",nointr");

	if (opts & OCFS2_MOUNT_DATA_WRITEBACK)
		FUNC1(s, ",data=writeback");
	else
		FUNC1(s, ",data=ordered");

	if (opts & OCFS2_MOUNT_BARRIER)
		FUNC1(s, ",barrier=1");

	if (opts & OCFS2_MOUNT_ERRORS_PANIC)
		FUNC1(s, ",errors=panic");
	else
		FUNC1(s, ",errors=remount-ro");

	if (osb->preferred_slot != OCFS2_INVALID_SLOT)
		FUNC1(s, ",preferred_slot=%d", osb->preferred_slot);

	if (osb->s_atime_quantum != OCFS2_DEFAULT_ATIME_QUANTUM)
		FUNC1(s, ",atime_quantum=%u", osb->s_atime_quantum);

	if (osb->osb_commit_interval)
		FUNC1(s, ",commit=%u",
			   (unsigned) (osb->osb_commit_interval / HZ));

	local_alloc_megs = osb->local_alloc_bits >> (20 - osb->s_clustersize_bits);
	if (local_alloc_megs != OCFS2_DEFAULT_LOCAL_ALLOC_SIZE)
		FUNC1(s, ",localalloc=%d", local_alloc_megs);

	if (opts & OCFS2_MOUNT_LOCALFLOCKS)
		FUNC1(s, ",localflocks,");

	if (osb->osb_cluster_stack[0])
		FUNC1(s, ",cluster_stack=%.*s", OCFS2_STACK_LABEL_LEN,
			   osb->osb_cluster_stack);
	if (opts & OCFS2_MOUNT_USRQUOTA)
		FUNC1(s, ",usrquota");
	if (opts & OCFS2_MOUNT_GRPQUOTA)
		FUNC1(s, ",grpquota");

	if (opts & OCFS2_MOUNT_NOUSERXATTR)
		FUNC1(s, ",nouser_xattr");
	else
		FUNC1(s, ",user_xattr");

	if (opts & OCFS2_MOUNT_INODE64)
		FUNC1(s, ",inode64");

#ifdef CONFIG_OCFS2_FS_POSIX_ACL
	if (opts & OCFS2_MOUNT_POSIX_ACL)
		seq_printf(s, ",acl");
	else
		seq_printf(s, ",noacl");
#endif

	return 0;
}