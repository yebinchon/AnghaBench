#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  runlist_element ;
struct TYPE_27__ {int /*<<< orphan*/ * rl; } ;
struct TYPE_24__ {TYPE_5__* base_ntfs_ino; } ;
struct TYPE_28__ {int allocated_size; scalar_t__ type; scalar_t__ name_len; TYPE_4__ runlist; TYPE_10__* vol; int /*<<< orphan*/  name; struct page* page; int /*<<< orphan*/  size_lock; TYPE_1__ ext; } ;
typedef  TYPE_5__ ntfs_inode ;
struct TYPE_29__ {int /*<<< orphan*/ * mrec; TYPE_7__* attr; TYPE_5__* base_ntfs_ino; TYPE_5__* ntfs_ino; int /*<<< orphan*/ * base_mrec; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_6__ ntfs_attr_search_ctx ;
typedef  int VCN ;
struct TYPE_25__ {int /*<<< orphan*/  highest_vcn; int /*<<< orphan*/  lowest_vcn; } ;
struct TYPE_26__ {TYPE_2__ non_resident; } ;
struct TYPE_30__ {scalar_t__ type; scalar_t__ name_length; TYPE_3__ data; int /*<<< orphan*/  non_resident; int /*<<< orphan*/  name_offset; } ;
struct TYPE_23__ {int cluster_size_bits; } ;
typedef  int /*<<< orphan*/  MFT_RECORD ;
typedef  TYPE_7__ ATTR_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 void* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_6__* FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_10__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 

int FUNC24(ntfs_inode *ni, VCN vcn, ntfs_attr_search_ctx *ctx)
{
	VCN end_vcn;
	unsigned long flags;
	ntfs_inode *base_ni;
	MFT_RECORD *m;
	ATTR_RECORD *a;
	runlist_element *rl;
	struct page *put_this_page = NULL;
	int err = 0;
	bool ctx_is_temporary, ctx_needs_reset;
	ntfs_attr_search_ctx old_ctx = { NULL, };

	FUNC13("Mapping runlist part containing vcn 0x%llx.",
			(unsigned long long)vcn);
	if (!FUNC2(ni))
		base_ni = ni;
	else
		base_ni = ni->ext.base_ntfs_ino;
	if (!ctx) {
		ctx_is_temporary = ctx_needs_reset = true;
		m = FUNC7(base_ni);
		if (FUNC1(m))
			return FUNC4(m);
		ctx = FUNC9(base_ni, m);
		if (FUNC21(!ctx)) {
			err = -ENOMEM;
			goto err_out;
		}
	} else {
		VCN allocated_size_vcn;

		FUNC0(FUNC1(ctx->mrec));
		a = ctx->attr;
		FUNC0(!a->non_resident);
		ctx_is_temporary = false;
		end_vcn = FUNC20(a->data.non_resident.highest_vcn);
		FUNC17(&ni->size_lock, flags);
		allocated_size_vcn = ni->allocated_size >>
				ni->vol->cluster_size_bits;
		FUNC18(&ni->size_lock, flags);
		if (!a->data.non_resident.lowest_vcn && end_vcn <= 0)
			end_vcn = allocated_size_vcn - 1;
		/*
		 * If we already have the attribute extent containing @vcn in
		 * @ctx, no need to look it up again.  We slightly cheat in
		 * that if vcn exceeds the allocated size, we will refuse to
		 * map the runlist below, so there is definitely no need to get
		 * the right attribute extent.
		 */
		if (vcn >= allocated_size_vcn || (a->type == ni->type &&
				a->name_length == ni->name_len &&
				!FUNC8((u8*)a + FUNC5(a->name_offset),
				ni->name, ni->name_len) &&
				FUNC20(a->data.non_resident.lowest_vcn)
				<= vcn && end_vcn >= vcn))
			ctx_needs_reset = false;
		else {
			/* Save the old search context. */
			old_ctx = *ctx;
			/*
			 * If the currently mapped (extent) inode is not the
			 * base inode we will unmap it when we reinitialize the
			 * search context which means we need to get a
			 * reference to the page containing the mapped mft
			 * record so we do not accidentally drop changes to the
			 * mft record when it has not been marked dirty yet.
			 */
			if (old_ctx.base_ntfs_ino && old_ctx.ntfs_ino !=
					old_ctx.base_ntfs_ino) {
				put_this_page = old_ctx.ntfs_ino->page;
				FUNC15(put_this_page);
			}
			/*
			 * Reinitialize the search context so we can lookup the
			 * needed attribute extent.
			 */
			FUNC12(ctx);
			ctx_needs_reset = true;
		}
	}
	if (ctx_needs_reset) {
		err = FUNC10(ni->type, ni->name, ni->name_len,
				CASE_SENSITIVE, vcn, NULL, 0, ctx);
		if (FUNC21(err)) {
			if (err == -ENOENT)
				err = -EIO;
			goto err_out;
		}
		FUNC0(!ctx->attr->non_resident);
	}
	a = ctx->attr;
	/*
	 * Only decompress the mapping pairs if @vcn is inside it.  Otherwise
	 * we get into problems when we try to map an out of bounds vcn because
	 * we then try to map the already mapped runlist fragment and
	 * ntfs_mapping_pairs_decompress() fails.
	 */
	end_vcn = FUNC20(a->data.non_resident.highest_vcn) + 1;
	if (FUNC21(vcn && vcn >= end_vcn)) {
		err = -ENOENT;
		goto err_out;
	}
	rl = FUNC14(ni->vol, a, ni->runlist.rl);
	if (FUNC1(rl))
		err = FUNC4(rl);
	else
		ni->runlist.rl = rl;
err_out:
	if (ctx_is_temporary) {
		if (FUNC6(ctx))
			FUNC11(ctx);
		FUNC23(base_ni);
	} else if (ctx_needs_reset) {
		/*
		 * If there is no attribute list, restoring the search context
		 * is acomplished simply by copying the saved context back over
		 * the caller supplied context.  If there is an attribute list,
		 * things are more complicated as we need to deal with mapping
		 * of mft records and resulting potential changes in pointers.
		 */
		if (FUNC3(base_ni)) {
			/*
			 * If the currently mapped (extent) inode is not the
			 * one we had before, we need to unmap it and map the
			 * old one.
			 */
			if (ctx->ntfs_ino != old_ctx.ntfs_ino) {
				/*
				 * If the currently mapped inode is not the
				 * base inode, unmap it.
				 */
				if (ctx->base_ntfs_ino && ctx->ntfs_ino !=
						ctx->base_ntfs_ino) {
					FUNC22(ctx->ntfs_ino);
					ctx->mrec = ctx->base_mrec;
					FUNC0(!ctx->mrec);
				}
				/*
				 * If the old mapped inode is not the base
				 * inode, map it.
				 */
				if (old_ctx.base_ntfs_ino &&
						old_ctx.ntfs_ino !=
						old_ctx.base_ntfs_ino) {
retry_map:
					ctx->mrec = FUNC7(
							old_ctx.ntfs_ino);
					/*
					 * Something bad has happened.  If out
					 * of memory retry till it succeeds.
					 * Any other errors are fatal and we
					 * return the error code in ctx->mrec.
					 * Let the caller deal with it...  We
					 * just need to fudge things so the
					 * caller can reinit and/or put the
					 * search context safely.
					 */
					if (FUNC1(ctx->mrec)) {
						if (FUNC4(ctx->mrec) ==
								-ENOMEM) {
							FUNC19();
							goto retry_map;
						} else
							old_ctx.ntfs_ino =
								old_ctx.
								base_ntfs_ino;
					}
				}
			}
			/* Update the changed pointers in the saved context. */
			if (ctx->mrec != old_ctx.mrec) {
				if (!FUNC1(ctx->mrec))
					old_ctx.attr = (ATTR_RECORD*)(
							(u8*)ctx->mrec +
							((u8*)old_ctx.attr -
							(u8*)old_ctx.mrec));
				old_ctx.mrec = ctx->mrec;
			}
		}
		/* Restore the search context to the saved one. */
		*ctx = old_ctx;
		/*
		 * We drop the reference on the page we took earlier.  In the
		 * case that IS_ERR(ctx->mrec) is true this means we might lose
		 * some changes to the mft record that had been made between
		 * the last time it was marked dirty/written out and now.  This
		 * at this stage is not a problem as the mapping error is fatal
		 * enough that the mft record cannot be written out anyway and
		 * the caller is very likely to shutdown the whole inode
		 * immediately and mark the volume dirty for chkdsk to pick up
		 * the pieces anyway.
		 */
		if (put_this_page)
			FUNC16(put_this_page);
	}
	return err;
}