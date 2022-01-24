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
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_data; int /*<<< orphan*/  b_history; scalar_t__ b_state; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int EXT4_GET_BLOCKS_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,struct buffer_head*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

struct buffer_head *FUNC16(handle_t *handle, struct inode *inode,
				ext4_lblk_t block, int create, int *errp)
{
	struct buffer_head dummy;
	int fatal = 0, err;
	int flags = 0;

	FUNC1(handle != NULL || create == 0);

	dummy.b_state = 0;
	dummy.b_blocknr = -1000;
	FUNC6(&dummy.b_history);
	if (create)
		flags |= EXT4_GET_BLOCKS_CREATE;
	err = FUNC8(handle, inode, block, 1, &dummy, flags);
	/*
	 * ext4_get_blocks() returns number of blocks mapped. 0 in
	 * case of a HOLE.
	 */
	if (err > 0) {
		if (err > 1)
			FUNC2(1);
		err = 0;
	}
	*errp = err;
	if (!err && FUNC4(&dummy)) {
		struct buffer_head *bh;
		bh = FUNC13(inode->i_sb, dummy.b_blocknr);
		if (!bh) {
			*errp = -EIO;
			goto err;
		}
		if (FUNC5(&dummy)) {
			FUNC1(create != 0);
			FUNC1(handle != NULL);

			/*
			 * Now that we do not always journal data, we should
			 * keep in mind whether this should always journal the
			 * new buffer as metadata.  For now, regular file
			 * writes use ext4_get_block instead, so it's not a
			 * problem.
			 */
			FUNC11(bh);
			FUNC0(bh, "call get_create_access");
			fatal = FUNC10(handle, bh);
			if (!fatal && !FUNC7(bh)) {
				FUNC12(bh->b_data, 0, inode->i_sb->s_blocksize);
				FUNC14(bh);
			}
			FUNC15(bh);
			FUNC0(bh, "call ext4_handle_dirty_metadata");
			err = FUNC9(handle, inode, bh);
			if (!fatal)
				fatal = err;
		} else {
			FUNC0(bh, "not a new buffer");
		}
		if (fatal) {
			*errp = fatal;
			FUNC3(bh);
			bh = NULL;
		}
		return bh;
	}
err:
	return NULL;
}