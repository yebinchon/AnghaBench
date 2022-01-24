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
struct super_block {int s_flags; } ;
struct ext4_sb_info {scalar_t__ s_groups_count; struct ext4_li_request* s_li_request; } ;
struct ext4_li_request {int /*<<< orphan*/  lr_request; scalar_t__ lr_timeout; } ;
typedef  scalar_t__ ext4_group_t ;
struct TYPE_2__ {int li_state; int /*<<< orphan*/  li_list_mtx; int /*<<< orphan*/  li_request_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EXT4_LAZYINIT_RUNNING ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  INIT_INODE_TABLE ; 
 int MS_RDONLY ; 
 TYPE_1__* ext4_li_info ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  ext4_li_mtx ; 
 struct ext4_li_request* FUNC2 (struct super_block*,scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_li_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
				    ext4_group_t first_not_zeroed)
{
	struct ext4_sb_info *sbi = FUNC0(sb);
	struct ext4_li_request *elr;
	ext4_group_t ngroups = FUNC0(sb)->s_groups_count;
	int ret = 0;

	if (sbi->s_li_request != NULL) {
		/*
		 * Reset timeout so it can be computed again, because
		 * s_li_wait_mult might have changed.
		 */
		sbi->s_li_request->lr_timeout = 0;
		return 0;
	}

	if (first_not_zeroed == ngroups ||
	    (sb->s_flags & MS_RDONLY) ||
	    !FUNC8(sb, INIT_INODE_TABLE))
		return 0;

	elr = FUNC2(sb, first_not_zeroed);
	if (!elr)
		return -ENOMEM;

	FUNC6(&ext4_li_mtx);

	if (NULL == ext4_li_info) {
		ret = FUNC1();
		if (ret)
			goto out;
	}

	FUNC6(&ext4_li_info->li_list_mtx);
	FUNC5(&elr->lr_request, &ext4_li_info->li_request_list);
	FUNC7(&ext4_li_info->li_list_mtx);

	sbi->s_li_request = elr;
	/*
	 * set elr to NULL here since it has been inserted to
	 * the request_list and the removal and free of it is
	 * handled by ext4_clear_request_list from now on.
	 */
	elr = NULL;

	if (!(ext4_li_info->li_state & EXT4_LAZYINIT_RUNNING)) {
		ret = FUNC3();
		if (ret)
			goto out;
	}
out:
	FUNC7(&ext4_li_mtx);
	if (ret)
		FUNC4(elr);
	return ret;
}