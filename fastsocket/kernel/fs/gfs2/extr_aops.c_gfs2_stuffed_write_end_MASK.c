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
typedef  unsigned int u64 ;
struct page {int dummy; } ;
struct inode {unsigned int i_size; } ;
struct gfs2_sbd {struct inode* sd_rindex; scalar_t__ sd_rindex_uptodate; struct inode* sd_statfs_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gh; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {unsigned char* b_data; int b_size; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,unsigned int) ; 
 void* FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, struct buffer_head *dibh,
				  loff_t pos, unsigned len, unsigned copied,
				  struct page *page)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct gfs2_inode *m_ip = FUNC1(sdp->sd_statfs_inode);
	u64 to = pos + copied;
	void *kaddr;
	unsigned char *buf = dibh->b_data + sizeof(struct gfs2_dinode);

	FUNC0((pos + len) > (dibh->b_size - sizeof(struct gfs2_dinode)));
	kaddr = FUNC12(page, KM_USER0);
	FUNC15(buf + pos, kaddr + pos, copied);
	FUNC16(kaddr + pos + copied, 0, len - copied);
	FUNC7(page);
	FUNC13(kaddr, KM_USER0);

	if (!FUNC3(page))
		FUNC4(page);
	FUNC18(page);
	FUNC17(page);

	if (copied) {
		if (inode->i_size < to)
			FUNC11(inode, to);
		FUNC14(inode);
	}

	if (inode == sdp->sd_rindex) {
		FUNC5(inode);
		sdp->sd_rindex_uptodate = 0;
	}

	FUNC6(dibh);
	FUNC10(sdp);
	if (inode == sdp->sd_rindex) {
		FUNC8(&m_ip->i_gh);
		FUNC9(&m_ip->i_gh);
	}
	FUNC8(&ip->i_gh);
	FUNC9(&ip->i_gh);
	return copied;
}