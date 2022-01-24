#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct vm_fault {struct page* page; } ;
struct vm_area_struct {TYPE_4__* vm_file; } ;
struct page {int index; scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_flags; TYPE_3__* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
typedef  int loff_t ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_8__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {int /*<<< orphan*/  gl_flags; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GIF_SW_PAGED ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned int RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 int FUNC12 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC13 (struct gfs2_inode*) ; 
 scalar_t__ FUNC14 (struct gfs2_inode*) ; 
 int FUNC15 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*) ; 
 scalar_t__ FUNC17 (struct gfs2_inode*,unsigned int) ; 
 int FUNC18 (struct gfs2_sbd*) ; 
 int FUNC19 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct gfs2_sbd*) ; 
 int FUNC23 (struct gfs2_inode*,struct page*) ; 
 int FUNC24 (struct gfs2_inode*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct gfs2_inode*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 

__attribute__((used)) static int FUNC35(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_alloc_parms ap = { .aflags = 0, };
	unsigned long last_index;
	u64 pos = page->index << PAGE_CACHE_SHIFT;
	unsigned int data_blocks, ind_blocks, rblocks;
	int alloc_required = 0;
	struct gfs2_holder gh;
	loff_t size;
	int ret;

	FUNC30(inode->i_sb);

	/* Update file times before taking page lock */
	FUNC4(vma->vm_file);

	ret = FUNC5(inode);
	if (ret)
		goto out;

	ret = FUNC19(ip);
	if (ret)
		goto out_write_access;

	FUNC9(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
	ret = FUNC8(&gh);
	if (ret)
		goto out_uninit;

	FUNC31(GLF_DIRTY, &ip->i_gl->gl_flags);
	FUNC31(GIF_SW_PAGED, &ip->i_flags);

	FUNC20(inode, pos, PAGE_CACHE_SIZE);

	ret = FUNC24(ip, pos, PAGE_CACHE_SIZE, &alloc_required);
	if (ret)
		goto out_unlock;

	if (!alloc_required) {
		FUNC27(page);
		if (!FUNC2(page) || page->mapping != inode->i_mapping) {
			ret = -EAGAIN;
			FUNC33(page);
		}
		goto out_unlock;
	}

	ret = FUNC18(sdp);
	if (ret)
		goto out_unlock;

	ret = FUNC15(ip);
	if (ret)
		goto out_unlock;
	FUNC25(ip, PAGE_CACHE_SIZE, &data_blocks, &ind_blocks);
	ap.target = data_blocks + ind_blocks;
	ret = FUNC12(ip, &ap);
	if (ret)
		goto out_quota_unlock;

	rblocks = RES_DINODE + ind_blocks;
	if (FUNC13(ip))
		rblocks += data_blocks ? data_blocks : 1;
	if (ind_blocks || data_blocks) {
		rblocks += RES_STATFS + RES_QUOTA;
		rblocks += FUNC17(ip, data_blocks + ind_blocks);
	}
	ret = FUNC21(sdp, rblocks, 0);
	if (ret)
		goto out_trans_fail;

	FUNC27(page);
	ret = -EINVAL;
	size = FUNC26(inode);
	last_index = (size - 1) >> PAGE_CACHE_SHIFT;
	/* Check page index against inode size */
	if (size == 0 || (page->index > last_index))
		goto out_trans_end;

	ret = -EAGAIN;
	/* If truncated, we must retry the operation, we may have raced
	 * with the glock demotion code.
	 */
	if (!FUNC2(page) || page->mapping != inode->i_mapping)
		goto out_trans_end;

	/* Unstuff, if required, and allocate backing blocks for page */
	ret = 0;
	if (FUNC14(ip))
		ret = FUNC23(ip, page);
	if (ret == 0)
		ret = FUNC6(page);

out_trans_end:
	if (ret)
		FUNC33(page);
	FUNC22(sdp);
out_trans_fail:
	FUNC11(ip);
out_quota_unlock:
	FUNC16(ip);
out_unlock:
	FUNC7(&gh);
out_uninit:
	FUNC10(&gh);
	if (ret == 0) {
		FUNC32(page);
		FUNC34(page);
	}
out_write_access:
	FUNC28(inode);
out:
	FUNC29(inode->i_sb);
	return FUNC3(ret);
}