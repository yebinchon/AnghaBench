#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* len; void* offs; void* lnum; } ;
struct TYPE_7__ {int empty_lebs; int total_free; int total_dark; void* total_dead; void* total_used; void* total_dirty; void* idx_lebs; } ;
struct ubifs_info {int no_orphs; int leb_cnt; TYPE_4__ zroot; TYPE_2__ lst; TYPE_3__* mst_node; scalar_t__ dark_wm; scalar_t__ leb_size; void* old_idx_sz; void* calc_idx_sz; void* lscan_lnum; void* lsave_offs; void* lsave_lnum; void* ltab_offs; void* ltab_lnum; void* nhead_offs; void* nhead_lnum; void* lpt_offs; void* lpt_lnum; void* ihead_offs; void* ihead_lnum; void* gc_lnum; void* lhead_lnum; void* cmt_no; void* highest_inum; void* max_sqnum; int /*<<< orphan*/  mst_node_alsz; } ;
struct TYPE_6__ {void* sqnum; } ;
struct TYPE_8__ {int flags; int root_lnum; int root_offs; int root_len; int log_lnum; int gc_lnum; int ihead_lnum; int ihead_offs; int lpt_lnum; int lpt_offs; int nhead_lnum; int nhead_offs; int ltab_lnum; int ltab_offs; int lsave_lnum; int lsave_offs; int lscan_lnum; int empty_lebs; int idx_lebs; int leb_cnt; void* total_dark; void* total_free; void* total_dead; void* total_used; void* total_dirty; void* index_size; void* cmt_no; void* highest_inum; TYPE_1__ ch; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UBIFS_MIN_LEB_CNT ; 
 int UBIFS_MST_NO_ORPHS ; 
 int UBIFS_MST_RCVRY ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (struct ubifs_info*,TYPE_4__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (void*) ; 
 int FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct ubifs_info*) ; 
 int FUNC11 (struct ubifs_info*) ; 

int FUNC12(struct ubifs_info *c)
{
	int err, old_leb_cnt;

	c->mst_node = FUNC5(c->mst_node_alsz, GFP_KERNEL);
	if (!c->mst_node)
		return -ENOMEM;

	err = FUNC8(c);
	if (err) {
		if (err == -EUCLEAN)
			err = FUNC10(c);
		if (err)
			/*
			 * Note, we do not free 'c->mst_node' here because the
			 * unmount routine will take care of this.
			 */
			return err;
	}

	/* Make sure that the recovery flag is clear */
	c->mst_node->flags &= FUNC0(~UBIFS_MST_RCVRY);

	c->max_sqnum       = FUNC7(c->mst_node->ch.sqnum);
	c->highest_inum    = FUNC7(c->mst_node->highest_inum);
	c->cmt_no          = FUNC7(c->mst_node->cmt_no);
	c->zroot.lnum      = FUNC6(c->mst_node->root_lnum);
	c->zroot.offs      = FUNC6(c->mst_node->root_offs);
	c->zroot.len       = FUNC6(c->mst_node->root_len);
	c->lhead_lnum      = FUNC6(c->mst_node->log_lnum);
	c->gc_lnum         = FUNC6(c->mst_node->gc_lnum);
	c->ihead_lnum      = FUNC6(c->mst_node->ihead_lnum);
	c->ihead_offs      = FUNC6(c->mst_node->ihead_offs);
	c->old_idx_sz      = FUNC7(c->mst_node->index_size);
	c->lpt_lnum        = FUNC6(c->mst_node->lpt_lnum);
	c->lpt_offs        = FUNC6(c->mst_node->lpt_offs);
	c->nhead_lnum      = FUNC6(c->mst_node->nhead_lnum);
	c->nhead_offs      = FUNC6(c->mst_node->nhead_offs);
	c->ltab_lnum       = FUNC6(c->mst_node->ltab_lnum);
	c->ltab_offs       = FUNC6(c->mst_node->ltab_offs);
	c->lsave_lnum      = FUNC6(c->mst_node->lsave_lnum);
	c->lsave_offs      = FUNC6(c->mst_node->lsave_offs);
	c->lscan_lnum      = FUNC6(c->mst_node->lscan_lnum);
	c->lst.empty_lebs  = FUNC6(c->mst_node->empty_lebs);
	c->lst.idx_lebs    = FUNC6(c->mst_node->idx_lebs);
	old_leb_cnt        = FUNC6(c->mst_node->leb_cnt);
	c->lst.total_free  = FUNC7(c->mst_node->total_free);
	c->lst.total_dirty = FUNC7(c->mst_node->total_dirty);
	c->lst.total_used  = FUNC7(c->mst_node->total_used);
	c->lst.total_dead  = FUNC7(c->mst_node->total_dead);
	c->lst.total_dark  = FUNC7(c->mst_node->total_dark);

	c->calc_idx_sz = c->old_idx_sz;

	if (c->mst_node->flags & FUNC0(UBIFS_MST_NO_ORPHS))
		c->no_orphs = 1;

	if (old_leb_cnt != c->leb_cnt) {
		/* The file system has been resized */
		int growth = c->leb_cnt - old_leb_cnt;

		if (c->leb_cnt < old_leb_cnt ||
		    c->leb_cnt < UBIFS_MIN_LEB_CNT) {
			FUNC9("bad leb_cnt on master node");
			FUNC2(c, c->mst_node);
			return -EINVAL;
		}

		FUNC3("Auto resizing (master) from %d LEBs to %d LEBs",
			old_leb_cnt, c->leb_cnt);
		c->lst.empty_lebs += growth;
		c->lst.total_free += growth * (long long)c->leb_size;
		c->lst.total_dark += growth * (long long)c->dark_wm;

		/*
		 * Reflect changes back onto the master node. N.B. the master
		 * node gets written immediately whenever mounting (or
		 * remounting) in read-write mode, so we do not need to write it
		 * here.
		 */
		c->mst_node->leb_cnt = FUNC0(c->leb_cnt);
		c->mst_node->empty_lebs = FUNC0(c->lst.empty_lebs);
		c->mst_node->total_free = FUNC1(c->lst.total_free);
		c->mst_node->total_dark = FUNC1(c->lst.total_dark);
	}

	err = FUNC11(c);
	if (err)
		return err;

	err = FUNC4(c, &c->zroot);

	return err;
}