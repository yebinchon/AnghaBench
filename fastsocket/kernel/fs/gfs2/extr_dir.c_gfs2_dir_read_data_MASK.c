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
typedef  int u32 ;
struct TYPE_2__ {unsigned int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; int /*<<< orphan*/  sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DIO_WAIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFS2_METATYPE_JD ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_inode*,char*,scalar_t__,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 struct buffer_head* FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC11 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct gfs2_inode *ip, char *buf, u64 offset,
			      unsigned int size, unsigned ra)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	u64 lblock, dblock;
	u32 extlen = 0;
	unsigned int o;
	int copied = 0;
	int error = 0;
	u64 disksize = FUNC12(&ip->i_inode);

	if (offset >= disksize)
		return 0;

	if (offset + size > disksize)
		size = disksize - offset;

	if (!size)
		return 0;

	if (FUNC8(ip))
		return FUNC5(ip, buf, offset, size);

	if (FUNC4(sdp, FUNC7(ip)))
		return -EINVAL;

	lblock = offset;
	o = FUNC3(lblock, sdp->sd_jbsize) + sizeof(struct gfs2_meta_header);

	while (copied < size) {
		unsigned int amount;
		struct buffer_head *bh;
		int new;

		amount = size - copied;
		if (amount > sdp->sd_sb.sb_bsize - o)
			amount = sdp->sd_sb.sb_bsize - o;

		if (!extlen) {
			new = 0;
			error = FUNC6(&ip->i_inode, lblock, &new,
						&dblock, &extlen);
			if (error || !dblock)
				goto fail;
			FUNC0(extlen < 1);
			if (!ra)
				extlen = 1;
			bh = FUNC9(ip->i_gl, dblock, extlen);
		} else {
			error = FUNC10(ip->i_gl, dblock, DIO_WAIT, &bh);
			if (error)
				goto fail;
		}
		error = FUNC11(sdp, bh, GFS2_METATYPE_JD);
		if (error) {
			FUNC2(bh);
			goto fail;
		}
		dblock++;
		extlen--;
		FUNC13(buf, bh->b_data + o, amount);
		FUNC2(bh);
		buf += amount;
		copied += amount;
		lblock++;
		o = sizeof(struct gfs2_meta_header);
	}

	return copied;
fail:
	return (copied) ? copied : error;
}