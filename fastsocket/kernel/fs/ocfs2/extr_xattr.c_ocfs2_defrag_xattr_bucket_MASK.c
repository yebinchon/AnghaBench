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
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct ocfs2_xattr_header {void* xh_count; void* xh_free_start; struct ocfs2_xattr_entry* xh_entries; void* xh_name_value_len; } ;
struct ocfs2_xattr_entry {void* xe_name_offset; int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_value_size; } ;
struct ocfs2_xattr_bucket {int bu_blocks; } ;
struct inode {TYPE_1__* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {size_t s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 size_t OCFS2_XATTR_BUCKET_SIZE ; 
 size_t OCFS2_XATTR_ROOT_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_xattr_bucket*) ; 
 char* FUNC2 (struct ocfs2_xattr_bucket*,int) ; 
 int /*<<< orphan*/  cmp_xe ; 
 int /*<<< orphan*/  cmp_xe_offset ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,unsigned long long,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*) ; 
 scalar_t__ FUNC16 (struct ocfs2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_xe ; 

__attribute__((used)) static int FUNC18(struct inode *inode,
				     handle_t *handle,
				     struct ocfs2_xattr_bucket *bucket)
{
	int ret, i;
	size_t end, offset, len, value_len;
	struct ocfs2_xattr_header *xh;
	char *entries, *buf, *bucket_buf = NULL;
	u64 blkno = FUNC1(bucket);
	u16 xh_free_start;
	size_t blocksize = inode->i_sb->s_blocksize;
	struct ocfs2_xattr_entry *xe;

	/*
	 * In order to make the operation more efficient and generic,
	 * we copy all the blocks into a contiguous memory and do the
	 * defragment there, so if anything is error, we will not touch
	 * the real block.
	 */
	bucket_buf = FUNC5(OCFS2_XATTR_BUCKET_SIZE, GFP_NOFS);
	if (!bucket_buf) {
		ret = -EIO;
		goto out;
	}

	buf = bucket_buf;
	for (i = 0; i < bucket->bu_blocks; i++, buf += blocksize)
		FUNC8(buf, FUNC2(bucket, i), blocksize);

	ret = FUNC14(handle, bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC13(ret);
		goto out;
	}

	xh = (struct ocfs2_xattr_header *)bucket_buf;
	entries = (char *)xh->xh_entries;
	xh_free_start = FUNC6(xh->xh_free_start);

	FUNC11(0, "adjust xattr bucket in %llu, count = %u, "
	     "xh_free_start = %u, xh_name_value_len = %u.\n",
	     (unsigned long long)blkno, FUNC6(xh->xh_count),
	     xh_free_start, FUNC6(xh->xh_name_value_len));

	/*
	 * sort all the entries by their offset.
	 * the largest will be the first, so that we can
	 * move them to the end one by one.
	 */
	FUNC17(entries, FUNC6(xh->xh_count),
	     sizeof(struct ocfs2_xattr_entry),
	     cmp_xe_offset, swap_xe);

	/* Move all name/values to the end of the bucket. */
	xe = xh->xh_entries;
	end = OCFS2_XATTR_BUCKET_SIZE;
	for (i = 0; i < FUNC6(xh->xh_count); i++, xe++) {
		offset = FUNC6(xe->xe_name_offset);
		if (FUNC16(xe))
			value_len = FUNC0(
					FUNC7(xe->xe_value_size));
		else
			value_len = OCFS2_XATTR_ROOT_SIZE;
		len = FUNC0(xe->xe_name_len) + value_len;

		/*
		 * We must make sure that the name/value pair
		 * exist in the same block. So adjust end to
		 * the previous block end if needed.
		 */
		if (((end - len) / blocksize !=
			(end - 1) / blocksize))
			end = end - end % blocksize;

		if (end > offset + len) {
			FUNC9(bucket_buf + end - len,
				bucket_buf + offset, len);
			xe->xe_name_offset = FUNC3(end - len);
		}

		FUNC12(end < offset + len, "Defrag check failed for "
				"bucket %llu\n", (unsigned long long)blkno);

		end -= len;
	}

	FUNC12(xh_free_start > end, "Defrag check failed for "
			"bucket %llu\n", (unsigned long long)blkno);

	if (xh_free_start == end)
		goto out;

	FUNC10(bucket_buf + xh_free_start, 0, end - xh_free_start);
	xh->xh_free_start = FUNC3(end);

	/* sort the entries by their name_hash. */
	FUNC17(entries, FUNC6(xh->xh_count),
	     sizeof(struct ocfs2_xattr_entry),
	     cmp_xe, swap_xe);

	buf = bucket_buf;
	for (i = 0; i < bucket->bu_blocks; i++, buf += blocksize)
		FUNC8(FUNC2(bucket, i), buf, blocksize);
	FUNC15(handle, bucket);

out:
	FUNC4(bucket_buf);
	return ret;
}