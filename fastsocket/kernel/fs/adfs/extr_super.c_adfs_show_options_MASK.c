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
struct adfs_sb_info {scalar_t__ s_uid; scalar_t__ s_gid; scalar_t__ s_owner_mask; scalar_t__ s_other_mask; } ;

/* Variables and functions */
 scalar_t__ ADFS_DEFAULT_OTHER_MASK ; 
 scalar_t__ ADFS_DEFAULT_OWNER_MASK ; 
 struct adfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, struct vfsmount *mnt)
{
	struct adfs_sb_info *asb = FUNC0(mnt->mnt_sb);

	if (asb->s_uid != 0)
		FUNC1(seq, ",uid=%u", asb->s_uid);
	if (asb->s_gid != 0)
		FUNC1(seq, ",gid=%u", asb->s_gid);
	if (asb->s_owner_mask != ADFS_DEFAULT_OWNER_MASK)
		FUNC1(seq, ",ownmask=%o", asb->s_owner_mask);
	if (asb->s_other_mask != ADFS_DEFAULT_OTHER_MASK)
		FUNC1(seq, ",othmask=%o", asb->s_other_mask);

	return 0;
}