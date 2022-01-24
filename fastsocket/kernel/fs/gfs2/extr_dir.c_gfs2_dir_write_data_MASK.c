#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int sb_bsize; } ;
struct gfs2_sbd {unsigned int sd_jbsize; TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct TYPE_6__ {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_2__ i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EINVAL ; 
 int EIO ; 
 struct gfs2_sbd* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int,unsigned int) ; 
 scalar_t__ FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC6 (struct gfs2_inode*,int,struct buffer_head**) ; 
 int FUNC7 (struct gfs2_inode*,int,struct buffer_head**) ; 
 int FUNC8 (struct gfs2_inode*,char const*,unsigned int,unsigned int) ; 
 int FUNC9 (TYPE_2__*,int,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 scalar_t__ FUNC11 (struct gfs2_inode*) ; 
 int FUNC12 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC14 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char const*,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct gfs2_inode *ip, const char *buf,
			       u64 offset, unsigned int size)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct buffer_head *dibh;
	u64 lblock, dblock;
	u32 extlen = 0;
	unsigned int o;
	int copied = 0;
	int error = 0;
	int new = 0;

	if (!size)
		return 0;

	if (FUNC11(ip) &&
	    offset + size <= sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode))
		return FUNC8(ip, buf, (unsigned int)offset,
					      size);

	if (FUNC3(sdp, FUNC10(ip)))
		return -EINVAL;

	if (FUNC11(ip)) {
		error = FUNC14(ip, NULL);
		if (error)
			return error;
	}

	lblock = offset;
	o = FUNC2(lblock, sdp->sd_jbsize) + sizeof(struct gfs2_meta_header);

	while (copied < size) {
		unsigned int amount;
		struct buffer_head *bh;

		amount = size - copied;
		if (amount > sdp->sd_sb.sb_bsize - o)
			amount = sdp->sd_sb.sb_bsize - o;

		if (!extlen) {
			new = 1;
			error = FUNC9(&ip->i_inode, lblock, &new,
						&dblock, &extlen);
			if (error)
				goto fail;
			error = -EIO;
			if (FUNC4(sdp, dblock))
				goto fail;
		}

		if (amount == sdp->sd_jbsize || new)
			error = FUNC7(ip, dblock, &bh);
		else
			error = FUNC6(ip, dblock, &bh);

		if (error)
			goto fail;

		FUNC13(ip->i_gl, bh);
		FUNC16(bh->b_data + o, buf, amount);
		FUNC1(bh);

		buf += amount;
		copied += amount;
		lblock++;
		dblock++;
		extlen--;

		o = sizeof(struct gfs2_meta_header);
	}

out:
	error = FUNC12(ip, &dibh);
	if (error)
		return error;

	if (ip->i_inode.i_size < offset + copied)
		FUNC15(&ip->i_inode, offset + copied);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;

	FUNC13(ip->i_gl, dibh);
	FUNC5(ip, dibh->b_data);
	FUNC1(dibh);

	return copied;
fail:
	if (copied)
		goto out;
	return error;
}