#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct gfs2_sbd {TYPE_2__* sd_jdesc; int /*<<< orphan*/  sd_vfs; } ;
struct gfs2_log_header_host {unsigned int lh_blkno; scalar_t__ lh_sequence; } ;
struct TYPE_4__ {void* mh_jid; void* mh_format; void* __pad0; void* mh_type; void* mh_magic; } ;
struct gfs2_log_header {void* lh_hash; void* lh_blkno; void* lh_flags; void* lh_sequence; TYPE_1__ lh_header; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_inode; } ;
struct TYPE_6__ {int i_blkbits; } ;
struct gfs2_inode {TYPE_3__ i_inode; } ;
struct buffer_head {int b_size; struct gfs2_log_header* b_data; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_state; } ;
struct TYPE_5__ {unsigned int jd_jid; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int GFS2_FORMAT_LH ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int GFS2_LOG_HEAD_UNMOUNT ; 
 unsigned int GFS2_MAGIC ; 
 unsigned int GFS2_METATYPE_LH ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (unsigned int) ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (TYPE_3__*,unsigned int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 unsigned int FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_log_header*,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 scalar_t__ FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC18(struct gfs2_jdesc *jd, struct gfs2_log_header_host *head)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_sbd *sdp = FUNC1(jd->jd_inode);
	unsigned int lblock;
	struct gfs2_log_header *lh;
	u32 hash;
	struct buffer_head *bh;
	int error;
	struct buffer_head bh_map = { .b_state = 0, .b_blocknr = 0 };

	lblock = head->lh_blkno;
	FUNC10(sdp, &lblock);
	bh_map.b_size = 1 << ip->i_inode.i_blkbits;
	error = FUNC6(&ip->i_inode, lblock, &bh_map, 0);
	if (error)
		return error;
	if (!bh_map.b_blocknr) {
		FUNC7(ip);
		return -EIO;
	}

	bh = FUNC13(sdp->sd_vfs, bh_map.b_blocknr);
	FUNC11(bh);
	FUNC12(bh->b_data, 0, bh->b_size);
	FUNC15(bh);
	FUNC3(bh);
	FUNC17(bh);

	lh = (struct gfs2_log_header *)bh->b_data;
	FUNC12(lh, 0, sizeof(struct gfs2_log_header));
	lh->lh_header.mh_magic = FUNC4(GFS2_MAGIC);
	lh->lh_header.mh_type = FUNC4(GFS2_METATYPE_LH);
	lh->lh_header.__pad0 = FUNC5(0);
	lh->lh_header.mh_format = FUNC4(GFS2_FORMAT_LH);
	lh->lh_header.mh_jid = FUNC4(sdp->sd_jdesc->jd_jid);
	lh->lh_sequence = FUNC5(head->lh_sequence + 1);
	lh->lh_flags = FUNC4(GFS2_LOG_HEAD_UNMOUNT);
	lh->lh_blkno = FUNC4(lblock);
	hash = FUNC8((const char *)lh, sizeof(struct gfs2_log_header));
	lh->lh_hash = FUNC4(hash);

	FUNC14(bh);
	if (FUNC16(bh))
		FUNC9(sdp, bh);
	FUNC2(bh);

	return error;
}