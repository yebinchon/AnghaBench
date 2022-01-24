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
typedef  int /*<<< orphan*/  u32 ;
struct superblock_security_struct {int flags; TYPE_2__* sb; int /*<<< orphan*/  def_sid; int /*<<< orphan*/  mntpoint_sid; int /*<<< orphan*/  sid; } ;
struct super_block {struct superblock_security_struct* s_security; } ;
struct security_mnt_opts {int num_mnt_opts; char** mnt_opts; int* mnt_opts_flags; } ;
struct inode_security_struct {int /*<<< orphan*/  sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTEXT_MNT ; 
 int DEFCONTEXT_MNT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FSCONTEXT_MNT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ROOTCONTEXT_MNT ; 
 char SE_MNTMASK ; 
 int SE_SBINITIALIZED ; 
 int SE_SBLABELSUPP ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct security_mnt_opts*) ; 
 int /*<<< orphan*/  FUNC3 (struct security_mnt_opts*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ss_initialized ; 

__attribute__((used)) static int FUNC5(const struct super_block *sb,
				struct security_mnt_opts *opts)
{
	int rc = 0, i;
	struct superblock_security_struct *sbsec = sb->s_security;
	char *context = NULL;
	u32 len;
	char tmp;

	FUNC3(opts);

	if (!(sbsec->flags & SE_SBINITIALIZED))
		return -EINVAL;

	if (!ss_initialized)
		return -EINVAL;

	tmp = sbsec->flags & SE_MNTMASK;
	/* count the number of mount options for this sb */
	for (i = 0; i < 8; i++) {
		if (tmp & 0x01)
			opts->num_mnt_opts++;
		tmp >>= 1;
	}
	/* Check if the Label support flag is set */
	if (sbsec->flags & SE_SBLABELSUPP)
		opts->num_mnt_opts++;

	opts->mnt_opts = FUNC1(opts->num_mnt_opts, sizeof(char *), GFP_ATOMIC);
	if (!opts->mnt_opts) {
		rc = -ENOMEM;
		goto out_free;
	}

	opts->mnt_opts_flags = FUNC1(opts->num_mnt_opts, sizeof(int), GFP_ATOMIC);
	if (!opts->mnt_opts_flags) {
		rc = -ENOMEM;
		goto out_free;
	}

	i = 0;
	if (sbsec->flags & FSCONTEXT_MNT) {
		rc = FUNC4(sbsec->sid, &context, &len);
		if (rc)
			goto out_free;
		opts->mnt_opts[i] = context;
		opts->mnt_opts_flags[i++] = FSCONTEXT_MNT;
	}
	if (sbsec->flags & CONTEXT_MNT) {
		rc = FUNC4(sbsec->mntpoint_sid, &context, &len);
		if (rc)
			goto out_free;
		opts->mnt_opts[i] = context;
		opts->mnt_opts_flags[i++] = CONTEXT_MNT;
	}
	if (sbsec->flags & DEFCONTEXT_MNT) {
		rc = FUNC4(sbsec->def_sid, &context, &len);
		if (rc)
			goto out_free;
		opts->mnt_opts[i] = context;
		opts->mnt_opts_flags[i++] = DEFCONTEXT_MNT;
	}
	if (sbsec->flags & ROOTCONTEXT_MNT) {
		struct inode *root = sbsec->sb->s_root->d_inode;
		struct inode_security_struct *isec = root->i_security;

		rc = FUNC4(isec->sid, &context, &len);
		if (rc)
			goto out_free;
		opts->mnt_opts[i] = context;
		opts->mnt_opts_flags[i++] = ROOTCONTEXT_MNT;
	}
	if (sbsec->flags & SE_SBLABELSUPP) {
		opts->mnt_opts[i] = NULL;
		opts->mnt_opts_flags[i++] = SE_SBLABELSUPP;
	}

	FUNC0(i != opts->num_mnt_opts);

	return 0;

out_free:
	FUNC2(opts);
	return rc;
}