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
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; scalar_t__ bg_bitmap; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ b_committed_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_group_desc*) ; 
 int OCFS2_JOURNAL_ACCESS_UNDO ; 
 int OCFS2_JOURNAL_ACCESS_WRITE ; 
 TYPE_1__* FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned long*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned long*) ; 

__attribute__((used)) static inline int FUNC15(handle_t *handle,
					       struct inode *alloc_inode,
					       struct ocfs2_group_desc *bg,
					       struct buffer_head *group_bh,
					       unsigned int bit_off,
					       unsigned int num_bits)
{
	int status;
	unsigned int tmp;
	int journal_type = OCFS2_JOURNAL_ACCESS_WRITE;
	struct ocfs2_group_desc *undo_bg = NULL;
	int cluster_bitmap = 0;

	FUNC8();

	/* The caller got this descriptor from
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC2(bg));

	FUNC7(0, "off = %u, num = %u\n", bit_off, num_bits);

	if (FUNC11(alloc_inode))
		journal_type = OCFS2_JOURNAL_ACCESS_UNDO;

	status = FUNC12(handle, FUNC1(alloc_inode),
					 group_bh, journal_type);
	if (status < 0) {
		FUNC9(status);
		goto bail;
	}

	if (FUNC11(alloc_inode))
		cluster_bitmap = 1;

	if (cluster_bitmap) {
		FUNC4(group_bh);
		undo_bg = (struct ocfs2_group_desc *)
					FUNC3(group_bh)->b_committed_data;
		FUNC0(!undo_bg);
	}

	tmp = num_bits;
	while(tmp--) {
		FUNC10((bit_off + tmp),
				(unsigned long *) bg->bg_bitmap);
		if (cluster_bitmap)
			FUNC14(bit_off + tmp,
				      (unsigned long *) undo_bg->bg_bitmap);
	}
	FUNC6(&bg->bg_free_bits_count, num_bits);

	if (cluster_bitmap)
		FUNC5(group_bh);

	status = FUNC13(handle, group_bh);
	if (status < 0)
		FUNC9(status);
bail:
	return status;
}