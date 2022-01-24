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
typedef  int u16 ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_search {int not_found; int /*<<< orphan*/  xattr_bh; int /*<<< orphan*/  bucket; struct ocfs2_xattr_entry* here; struct ocfs2_xattr_header* header; } ;
struct ocfs2_xattr_info {scalar_t__ value_len; int /*<<< orphan*/  name; int /*<<< orphan*/  name_index; scalar_t__ value; } ;
struct ocfs2_xattr_header {int /*<<< orphan*/  xh_free_start; int /*<<< orphan*/  xh_name_value_len; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_value_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {size_t s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 int OCFS2_XATTR_BUCKET_SIZE ; 
 int OCFS2_XATTR_HEADER_GAP ; 
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ; 
 size_t OCFS2_XATTR_ROOT_SIZE ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_search*) ; 
 scalar_t__ FUNC15 (struct ocfs2_xattr_entry*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int FUNC17 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *inode,
					     struct ocfs2_xattr_info *xi,
					     struct ocfs2_xattr_search *xs,
					     struct ocfs2_xattr_set_ctxt *ctxt)
{
	struct ocfs2_xattr_header *xh;
	struct ocfs2_xattr_entry *xe;
	u16 count, header_size, xh_free_start;
	int free, max_free, need, old;
	size_t value_size = 0, name_len = FUNC18(xi->name);
	size_t blocksize = inode->i_sb->s_blocksize;
	int ret, allocation = 0;

	FUNC7("Set xattr %s in xattr index block\n", xi->name);

try_again:
	xh = xs->header;
	count = FUNC3(xh->xh_count);
	xh_free_start = FUNC3(xh->xh_free_start);
	header_size = sizeof(struct ocfs2_xattr_header) +
			count * sizeof(struct ocfs2_xattr_entry);
	max_free = OCFS2_XATTR_BUCKET_SIZE - header_size -
		FUNC3(xh->xh_name_value_len) - OCFS2_XATTR_HEADER_GAP;

	FUNC6(header_size > blocksize, "bucket %llu has header size "
			"of %u which exceed block size\n",
			(unsigned long long)FUNC2(xs->bucket),
			header_size);

	if (xi->value && xi->value_len > OCFS2_XATTR_INLINE_SIZE)
		value_size = OCFS2_XATTR_ROOT_SIZE;
	else if (xi->value)
		value_size = FUNC1(xi->value_len);

	if (xs->not_found)
		need = sizeof(struct ocfs2_xattr_entry) +
			FUNC1(name_len) + value_size;
	else {
		need = value_size + FUNC1(name_len);

		/*
		 * We only replace the old value if the new length is smaller
		 * than the old one. Otherwise we will allocate new space in the
		 * bucket to store it.
		 */
		xe = xs->here;
		if (FUNC15(xe))
			old = FUNC1(FUNC4(xe->xe_value_size));
		else
			old = FUNC1(OCFS2_XATTR_ROOT_SIZE);

		if (old >= value_size)
			need = 0;
	}

	free = xh_free_start - header_size - OCFS2_XATTR_HEADER_GAP;
	/*
	 * We need to make sure the new name/value pair
	 * can exist in the same block.
	 */
	if (xh_free_start % blocksize < need)
		free -= xh_free_start % blocksize;

	FUNC5(0, "xs->not_found = %d, in xattr bucket %llu: free = %d, "
	     "need = %d, max_free = %d, xh_free_start = %u, xh_name_value_len ="
	     " %u\n", xs->not_found,
	     (unsigned long long)FUNC2(xs->bucket),
	     free, need, max_free, FUNC3(xh->xh_free_start),
	     FUNC3(xh->xh_name_value_len));

	if (free < need ||
	    (xs->not_found &&
	     count == FUNC16(inode->i_sb))) {
		if (need <= max_free &&
		    count < FUNC16(inode->i_sb)) {
			/*
			 * We can create the space by defragment. Since only the
			 * name/value will be moved, the xe shouldn't be changed
			 * in xs.
			 */
			ret = FUNC12(inode, ctxt->handle,
							xs->bucket);
			if (ret) {
				FUNC8(ret);
				goto out;
			}

			xh_free_start = FUNC3(xh->xh_free_start);
			free = xh_free_start - header_size
				- OCFS2_XATTR_HEADER_GAP;
			if (xh_free_start % blocksize < need)
				free -= xh_free_start % blocksize;

			if (free >= need)
				goto xattr_set;

			FUNC5(0, "Can't get enough space for xattr insert by "
			     "defragment. Need %u bytes, but we have %d, so "
			     "allocate new bucket for it.\n", need, free);
		}

		/*
		 * We have to add new buckets or clusters and one
		 * allocation should leave us enough space for insert.
		 */
		FUNC0(allocation);

		/*
		 * We do not allow for overlapping ranges between buckets. And
		 * the maximum number of collisions we will allow for then is
		 * one bucket's worth, so check it here whether we need to
		 * add a new bucket for the insert.
		 */
		ret = FUNC11(inode,
							 xs->bucket,
							 xi->name);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		ret = FUNC10(inode,
						 xs->xattr_bh,
						 xs->bucket,
						 ctxt);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		/*
		 * ocfs2_add_new_xattr_bucket() will have updated
		 * xs->bucket if it moved, but it will not have updated
		 * any of the other search fields.  Thus, we drop it and
		 * re-search.  Everything should be cached, so it'll be
		 * quick.
		 */
		FUNC13(xs->bucket);
		ret = FUNC14(inode, xs->xattr_bh,
						   xi->name_index,
						   xi->name, xs);
		if (ret && ret != -ENODATA)
			goto out;
		xs->not_found = ret;
		allocation = 1;
		goto try_again;
	}

xattr_set:
	ret = FUNC17(inode, xi, xs, ctxt);
out:
	FUNC9(ret);
	return ret;
}