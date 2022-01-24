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
struct inode {scalar_t__ i_blkbits; scalar_t__ i_size; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct buffer_head {unsigned int b_size; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_state; } ;
typedef  unsigned int sector_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EIO ; 
 int FALLOC_FL_KEEP_SIZE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct inode*,unsigned int,struct buffer_head*,int) ; 
 scalar_t__ FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, loff_t offset, loff_t len,
			   int mode)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct buffer_head *dibh;
	int error;
	unsigned int nr_blks;
	loff_t size = len;
	sector_t lblock = offset >> inode->i_blkbits;

	error = FUNC6(ip, &dibh);
	if (FUNC12(error))
		return error;

	FUNC7(ip->i_gl, dibh);

	if (FUNC5(ip)) {
		error = FUNC8(ip, NULL);
		if (FUNC12(error))
			goto out;
	}

	while (len) {
		struct buffer_head bh_map = { .b_state = 0, .b_blocknr = 0 };
		bh_map.b_size = len;
		FUNC11(&bh_map);

		error = FUNC4(inode, lblock, &bh_map, 1);
		if (FUNC12(error))
			goto out;
		len -= bh_map.b_size;
		nr_blks = bh_map.b_size >> inode->i_blkbits;
		lblock += nr_blks;
		if (!FUNC2(&bh_map))
			continue;
		if (FUNC12(!FUNC3(&bh_map))) {
			error = -EIO;
			goto out;
		}
	}
	if (offset + size > inode->i_size && !(mode & FALLOC_FL_KEEP_SIZE))
		FUNC9(inode, offset + size);

	FUNC10(inode);

out:
	FUNC1(dibh);
	return error;
}