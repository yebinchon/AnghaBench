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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_height; int /*<<< orphan*/  i_rw_mutex; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int /*<<< orphan*/  di_height; void* di_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  void* __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int,struct buffer_head*,int) ; 
 int FUNC9 (struct gfs2_inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct gfs2_inode*) ; 
 int FUNC12 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct gfs2_inode*,struct buffer_head*,int /*<<< orphan*/ ,struct page*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct gfs2_inode *ip, struct page *page)
{
	struct buffer_head *bh, *dibh;
	struct gfs2_dinode *di;
	u64 block = 0;
	int isdir = FUNC11(ip);
	int error;

	FUNC4(&ip->i_rw_mutex);

	error = FUNC12(ip, &dibh);
	if (error)
		goto out;

	if (FUNC16(&ip->i_inode)) {
		/* Get a free block, fill it with the stuffed data,
		   and write it out to disk */

		unsigned int n = 1;
		error = FUNC6(ip, &block, &n, 0, NULL);
		if (error)
			goto out_brelse;
		if (isdir) {
			FUNC14(FUNC0(&ip->i_inode), block, 1);
			error = FUNC9(ip, block, &bh);
			if (error)
				goto out_brelse;
			FUNC8(bh, sizeof(struct gfs2_meta_header),
					      dibh, sizeof(struct gfs2_dinode));
			FUNC1(bh);
		} else {
			error = FUNC15(ip, dibh, block, page);
			if (error)
				goto out_brelse;
		}
	}

	/*  Set up the pointer to the new block  */

	FUNC13(ip->i_gl, dibh);
	di = (struct gfs2_dinode *)dibh->b_data;
	FUNC7(dibh, sizeof(struct gfs2_dinode));

	if (FUNC16(&ip->i_inode)) {
		*(__be64 *)(di + 1) = FUNC3(block);
		FUNC5(&ip->i_inode, 1);
		di->di_blocks = FUNC3(FUNC10(&ip->i_inode));
	}

	ip->i_height = 1;
	di->di_height = FUNC2(1);

out_brelse:
	FUNC1(dibh);
out:
	FUNC17(&ip->i_rw_mutex);
	return error;
}