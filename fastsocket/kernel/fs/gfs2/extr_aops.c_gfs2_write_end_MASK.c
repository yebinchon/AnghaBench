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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; } ;
struct gfs2_sbd {struct inode* sd_rindex; scalar_t__ sd_rindex_uptodate; struct inode* sd_statfs_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gh; TYPE_2__* i_res; int /*<<< orphan*/  i_gl; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
struct TYPE_6__ {struct gfs2_trans* journal_info; } ;
struct TYPE_5__ {scalar_t__ rs_qa_qd_num; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 TYPE_3__* current ; 
 int FUNC6 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 scalar_t__ FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*) ; 
 int FUNC13 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_inode*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_inode*) ; 
 int FUNC16 (struct inode*,struct buffer_head*,int,unsigned int,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct file *file, struct address_space *mapping,
			  loff_t pos, unsigned len, unsigned copied,
			  struct page *page, void *fsdata)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct gfs2_inode *m_ip = FUNC1(sdp->sd_statfs_inode);
	struct buffer_head *dibh;
	unsigned int from = pos & (PAGE_CACHE_SIZE - 1);
	unsigned int to = from + len;
	int ret;
	struct gfs2_trans *tr = current->journal_info;
	FUNC0(!tr);

	FUNC0(FUNC8(ip->i_gl) == NULL);

	ret = FUNC13(ip, &dibh);
	if (FUNC20(ret)) {
		FUNC21(page);
		FUNC19(page);
		goto failed;
	}

	if (FUNC11(ip))
		return FUNC16(inode, dibh, pos, len, copied, page);

	if (!FUNC12(ip))
		FUNC14(ip, page, from, to);

	ret = FUNC6(file, mapping, pos, len, copied, page, fsdata);
	if (tr->tr_num_buf_new)
		FUNC3(inode, I_DIRTY_DATASYNC);
	else
		FUNC17(ip->i_gl, dibh);


	if (inode == sdp->sd_rindex) {
		FUNC4(inode);
		sdp->sd_rindex_uptodate = 0;
	}

	FUNC5(dibh);
failed:
	FUNC18(sdp);
	FUNC10(ip);
	if (ip->i_res->rs_qa_qd_num)
		FUNC15(ip);
	if (inode == sdp->sd_rindex) {
		FUNC7(&m_ip->i_gh);
		FUNC9(&m_ip->i_gh);
	}
	FUNC7(&ip->i_gh);
	FUNC9(&ip->i_gh);
	return ret;
}