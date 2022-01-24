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
typedef  int u64 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct inode {scalar_t__ i_blocks; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_clusters; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct inode*) ; 
 struct buffer_head** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct buffer_head* FUNC16 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC17(struct ocfs2_super *osb,
				     handle_t *handle,
				     struct inode *inode,
				     const char *symname)
{
	struct buffer_head **bhs = NULL;
	const char *c;
	struct super_block *sb = osb->sb;
	u64 p_blkno, p_blocks;
	int virtual, blocks, status, i, bytes_left;

	bytes_left = FUNC3(inode) + 1;
	/* we can't trust i_blocks because we're actually going to
	 * write i_size + 1 bytes. */
	blocks = (bytes_left + sb->s_blocksize - 1) >> sb->s_blocksize_bits;

	FUNC8("i_blocks = %llu, i_size = %llu, blocks = %d\n",
			(unsigned long long)inode->i_blocks,
			FUNC3(inode), blocks);

	/* Sanity check -- make sure we're going to fit. */
	if (bytes_left >
	    FUNC11(sb, FUNC1(inode)->ip_clusters)) {
		status = -EIO;
		FUNC9(status);
		goto bail;
	}

	bhs = FUNC4(blocks, sizeof(struct buffer_head *), GFP_KERNEL);
	if (!bhs) {
		status = -ENOMEM;
		FUNC9(status);
		goto bail;
	}

	status = FUNC12(inode, 0, &p_blkno, &p_blocks,
					     NULL);
	if (status < 0) {
		FUNC9(status);
		goto bail;
	}

	/* links can never be larger than one cluster so we know this
	 * is all going to be contiguous, but do a sanity check
	 * anyway. */
	if ((p_blocks << sb->s_blocksize_bits) < bytes_left) {
		status = -EIO;
		FUNC9(status);
		goto bail;
	}

	virtual = 0;
	while(bytes_left > 0) {
		c = &symname[virtual * sb->s_blocksize];

		bhs[virtual] = FUNC16(sb, p_blkno);
		if (!bhs[virtual]) {
			status = -ENOMEM;
			FUNC9(status);
			goto bail;
		}
		FUNC15(FUNC0(inode),
					      bhs[virtual]);

		status = FUNC13(handle, FUNC0(inode),
					      bhs[virtual],
					      OCFS2_JOURNAL_ACCESS_CREATE);
		if (status < 0) {
			FUNC9(status);
			goto bail;
		}

		FUNC7(bhs[virtual]->b_data, 0, sb->s_blocksize);

		FUNC6(bhs[virtual]->b_data, c,
		       (bytes_left > sb->s_blocksize) ? sb->s_blocksize :
		       bytes_left);

		status = FUNC14(handle, bhs[virtual]);
		if (status < 0) {
			FUNC9(status);
			goto bail;
		}

		virtual++;
		p_blkno++;
		bytes_left -= sb->s_blocksize;
	}

	status = 0;
bail:

	if (bhs) {
		for(i = 0; i < blocks; i++)
			FUNC2(bhs[i]);
		FUNC5(bhs);
	}

	FUNC10(status);
	return status;
}