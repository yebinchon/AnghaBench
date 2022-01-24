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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_leaf {scalar_t__ lf_entries; int /*<<< orphan*/  lf_next; scalar_t__ lf_depth; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct dirent_gather {unsigned int offset; struct gfs2_dirent const** pdent; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent const*) ; 
 int FUNC4 (struct gfs2_dirent const*) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int FUNC8 (struct gfs2_inode*,scalar_t__*,void*,int /*<<< orphan*/ ,struct gfs2_dirent const**,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,char*,unsigned long long,unsigned int,unsigned int) ; 
 int FUNC10 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 struct buffer_head** FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  gfs2_dirent_gather ; 
 struct gfs2_dirent* FUNC12 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dirent_gather*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head**) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, u64 *offset, void *opaque,
			      filldir_t filldir, int *copied, unsigned *depth,
			      u64 leaf_no)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct buffer_head *bh;
	struct gfs2_leaf *lf;
	unsigned entries = 0, entries2 = 0;
	unsigned leaves = 0;
	const struct gfs2_dirent **darr, *dent;
	struct dirent_gather g;
	struct buffer_head **larr;
	int leaf = 0;
	int error, i;
	u64 lfn = leaf_no;

	do {
		error = FUNC10(ip, lfn, &bh);
		if (error)
			goto out;
		lf = (struct gfs2_leaf *)bh->b_data;
		if (leaves == 0)
			*depth = FUNC5(lf->lf_depth);
		entries += FUNC5(lf->lf_entries);
		leaves++;
		lfn = FUNC6(lf->lf_next);
		FUNC7(bh);
	} while(lfn);

	if (!entries)
		return 0;

	error = -ENOMEM;
	/*
	 * The extra 99 entries are not normally used, but are a buffer
	 * zone in case the number of entries in the leaf is corrupt.
	 * 99 is the maximum number of entries that can fit in a single
	 * leaf block.
	 */
	larr = FUNC11((leaves + entries + 99) * sizeof(void *));
	if (!larr)
		goto out;
	darr = (const struct gfs2_dirent **)(larr + leaves);
	g.pdent = darr;
	g.offset = 0;
	lfn = leaf_no;

	do {
		error = FUNC10(ip, lfn, &bh);
		if (error)
			goto out_free;
		lf = (struct gfs2_leaf *)bh->b_data;
		lfn = FUNC6(lf->lf_next);
		if (lf->lf_entries) {
			entries2 += FUNC5(lf->lf_entries);
			dent = FUNC12(inode, bh->b_data, bh->b_size,
						gfs2_dirent_gather, NULL, &g);
			error = FUNC4(dent);
			if (FUNC3(dent))
				goto out_free;
			if (entries2 != g.offset) {
				FUNC9(sdp, "Number of entries corrupt in dir "
						"leaf %llu, entries2 (%u) != "
						"g.offset (%u)\n",
					(unsigned long long)bh->b_blocknr,
					entries2, g.offset);
					
				error = -EIO;
				goto out_free;
			}
			error = 0;
			larr[leaf++] = bh;
		} else {
			FUNC7(bh);
		}
	} while(lfn);

	FUNC0(entries2 != entries);
	error = FUNC8(ip, offset, opaque, filldir, darr,
				entries, copied);
out_free:
	for(i = 0; i < leaf; i++)
		FUNC7(larr[i]);
	FUNC13(larr);
out:
	return error;
}