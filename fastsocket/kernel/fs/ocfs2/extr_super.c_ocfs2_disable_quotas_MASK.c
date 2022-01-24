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
struct TYPE_2__ {int /*<<< orphan*/ * files; } ;
struct super_block {TYPE_1__ s_dquot; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int DQUOT_LIMITS_ENABLED ; 
 int DQUOT_USAGE_ENABLED ; 
 int MAXQUOTAS ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int,int) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_super *osb)
{
	int type;
	struct inode *inode;
	struct super_block *sb = osb->sb;

	/* We mostly ignore errors in this function because there's not much
	 * we can do when we see them */
	for (type = 0; type < MAXQUOTAS; type++) {
		if (!FUNC2(sb, type))
			continue;
		inode = FUNC0(sb->s_dquot.files[type]);
		/* Turn off quotas. This will remove all dquot structures from
		 * memory and so they will be automatically synced to global
		 * quota files */
		FUNC3(sb, type, DQUOT_USAGE_ENABLED |
					    DQUOT_LIMITS_ENABLED);
		if (!inode)
			continue;
		FUNC1(inode);
	}
}