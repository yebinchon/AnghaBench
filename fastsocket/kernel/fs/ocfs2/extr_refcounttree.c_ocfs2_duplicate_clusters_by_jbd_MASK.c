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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct TYPE_4__ {struct ocfs2_caching_info* et_ci; } ;
struct ocfs2_cow_context {TYPE_2__ data_et; TYPE_1__* inode; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC8 (struct ocfs2_caching_info*,void*,struct buffer_head**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC11(handle_t *handle,
					   struct ocfs2_cow_context *context,
					   u32 cpos, u32 old_cluster,
					   u32 new_cluster, u32 new_len)
{
	int ret = 0;
	struct super_block *sb = context->inode->i_sb;
	struct ocfs2_caching_info *ci = context->data_et.et_ci;
	int i, blocks = FUNC5(sb, new_len);
	u64 old_block = FUNC5(sb, old_cluster);
	u64 new_block = FUNC5(sb, new_cluster);
	struct ocfs2_super *osb = FUNC0(sb);
	struct buffer_head *old_bh = NULL;
	struct buffer_head *new_bh = NULL;

	FUNC3(0, "old_cluster %u, new %u, len %u\n", old_cluster,
	     new_cluster, new_len);

	for (i = 0; i < blocks; i++, old_block++, new_block++) {
		new_bh = FUNC10(osb->sb, new_block);
		if (new_bh == NULL) {
			ret = -EIO;
			FUNC4(ret);
			break;
		}

		FUNC9(ci, new_bh);

		ret = FUNC8(ci, old_block, &old_bh, NULL);
		if (ret) {
			FUNC4(ret);
			break;
		}

		ret = FUNC6(handle, ci, new_bh,
					   OCFS2_JOURNAL_ACCESS_CREATE);
		if (ret) {
			FUNC4(ret);
			break;
		}

		FUNC2(new_bh->b_data, old_bh->b_data, sb->s_blocksize);
		ret = FUNC7(handle, new_bh);
		if (ret) {
			FUNC4(ret);
			break;
		}

		FUNC1(new_bh);
		FUNC1(old_bh);
		new_bh = NULL;
		old_bh = NULL;
	}

	FUNC1(new_bh);
	FUNC1(old_bh);
	return ret;
}