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
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_cached_block_free {struct ocfs2_cached_block_free* free_next; int /*<<< orphan*/  free_bit; int /*<<< orphan*/  free_blk; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_UPDATE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_cached_block_free*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_super *osb,
				      struct ocfs2_cached_block_free *head)
{
	struct ocfs2_cached_block_free *tmp;
	struct inode *tl_inode = osb->osb_tl_inode;
	handle_t *handle;
	int ret = 0;

	FUNC5(&tl_inode->i_mutex);

	while (head) {
		if (FUNC10(osb)) {
			ret = FUNC2(osb);
			if (ret < 0) {
				FUNC4(ret);
				break;
			}
		}

		handle = FUNC8(osb, OCFS2_TRUNCATE_LOG_UPDATE);
		if (FUNC0(handle)) {
			ret = FUNC1(handle);
			FUNC4(ret);
			break;
		}

		ret = FUNC9(osb, handle, head->free_blk,
						head->free_bit);

		FUNC7(osb, handle);
		tmp = head;
		head = head->free_next;
		FUNC3(tmp);

		if (ret < 0) {
			FUNC4(ret);
			break;
		}
	}

	FUNC6(&tl_inode->i_mutex);

	while (head) {
		/* Premature exit may have left some dangling items. */
		tmp = head;
		head = head->free_next;
		FUNC3(tmp);
	}

	return ret;
}