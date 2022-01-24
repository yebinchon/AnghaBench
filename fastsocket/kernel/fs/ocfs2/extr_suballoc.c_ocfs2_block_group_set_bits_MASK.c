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
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; void* bg_bitmap; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_group_desc*) ; 
 int OCFS2_JOURNAL_ACCESS_UNDO ; 
 int OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline int FUNC13(handle_t *handle,
					     struct inode *alloc_inode,
					     struct ocfs2_group_desc *bg,
					     struct buffer_head *group_bh,
					     unsigned int bit_off,
					     unsigned int num_bits)
{
	int status;
	void *bitmap = bg->bg_bitmap;
	int journal_type = OCFS2_JOURNAL_ACCESS_WRITE;

	FUNC6();

	/* All callers get the descriptor via
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC2(bg));
	FUNC0(FUNC4(bg->bg_free_bits_count) < num_bits);

	FUNC5(0, "block_group_set_bits: off = %u, num = %u\n", bit_off,
	     num_bits);

	if (FUNC9(alloc_inode))
		journal_type = OCFS2_JOURNAL_ACCESS_UNDO;

	status = FUNC10(handle,
					 FUNC1(alloc_inode),
					 group_bh,
					 journal_type);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	FUNC3(&bg->bg_free_bits_count, -num_bits);

	while(num_bits--)
		FUNC12(bit_off++, bitmap);

	status = FUNC11(handle,
				     group_bh);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

bail:
	FUNC8(status);
	return status;
}