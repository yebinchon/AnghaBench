#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_9__ ;
typedef  struct TYPE_46__   TYPE_8__ ;
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_26__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_17__ ;
typedef  struct TYPE_36__   TYPE_16__ ;
typedef  struct TYPE_35__   TYPE_15__ ;
typedef  struct TYPE_34__   TYPE_14__ ;
typedef  struct TYPE_33__   TYPE_13__ ;
typedef  struct TYPE_32__   TYPE_12__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  sle64 ;
struct TYPE_31__ {int cluster_size_bits; struct super_block* sb; } ;
typedef  TYPE_11__ ntfs_volume ;
struct TYPE_46__ {int vcn_size_bits; int block_size; int /*<<< orphan*/  collation_rule; } ;
struct TYPE_47__ {TYPE_8__ index; } ;
struct TYPE_38__ {TYPE_12__* base_ntfs_ino; } ;
struct TYPE_32__ {scalar_t__ type; int nr_extents; int /*<<< orphan*/  mft_no; TYPE_9__ itype; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; TYPE_1__ ext; TYPE_11__* vol; } ;
typedef  TYPE_12__ ntfs_inode ;
struct TYPE_33__ {int is_in_root; int data_len; struct page* page; TYPE_17__* ia; TYPE_12__* base_ni; TYPE_14__* actx; int /*<<< orphan*/ * data; TYPE_16__* entry; TYPE_15__* ir; TYPE_12__* idx_ni; } ;
typedef  TYPE_13__ ntfs_index_context ;
struct TYPE_34__ {scalar_t__ mrec; TYPE_4__* attr; } ;
typedef  TYPE_14__ ntfs_attr_search_ctx ;
typedef  int VCN ;
struct TYPE_44__ {int /*<<< orphan*/  data_length; int /*<<< orphan*/  data_offset; } ;
struct TYPE_45__ {TYPE_6__ vi; } ;
struct TYPE_43__ {int /*<<< orphan*/  entries_offset; int /*<<< orphan*/  index_length; } ;
struct TYPE_40__ {int /*<<< orphan*/  value_offset; } ;
struct TYPE_41__ {TYPE_2__ resident; } ;
struct TYPE_42__ {TYPE_3__ data; } ;
struct TYPE_39__ {struct address_space* i_mapping; } ;
struct TYPE_30__ {int flags; int /*<<< orphan*/  entries_offset; int /*<<< orphan*/  index_length; int /*<<< orphan*/  allocated_size; } ;
struct TYPE_37__ {TYPE_10__ index; int /*<<< orphan*/  index_block_vcn; int /*<<< orphan*/  magic; } ;
struct TYPE_36__ {int flags; int /*<<< orphan*/  length; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key; TYPE_7__ data; } ;
struct TYPE_35__ {TYPE_5__ index; } ;
typedef  struct page MFT_RECORD ;
typedef  TYPE_15__ INDEX_ROOT ;
typedef  int /*<<< orphan*/  INDEX_ENTRY_HEADER ;
typedef  TYPE_16__ INDEX_ENTRY ;
typedef  TYPE_17__ INDEX_ALLOCATION ;

/* Variables and functions */
 scalar_t__ AT_INDEX_ALLOCATION ; 
 int /*<<< orphan*/  AT_INDEX_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int INDEX_ENTRY_END ; 
 int INDEX_ENTRY_NODE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int LEAF_NODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*) ; 
 int NODE_MASK ; 
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC4 (struct page*) ; 
 TYPE_26__* FUNC5 (TYPE_12__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC10 (void const*,int /*<<< orphan*/ *,int const) ; 
 TYPE_14__* FUNC11 (TYPE_12__*,struct page*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_14__*) ; 
 int FUNC14 (TYPE_11__*,int /*<<< orphan*/ ,void const*,int const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct page* FUNC19 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 scalar_t__ FUNC21 (struct page*) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_12__*) ; 

int FUNC27(const void *key, const int key_len,
		ntfs_index_context *ictx)
{
	VCN vcn, old_vcn;
	ntfs_inode *idx_ni = ictx->idx_ni;
	ntfs_volume *vol = idx_ni->vol;
	struct super_block *sb = vol->sb;
	ntfs_inode *base_ni = idx_ni->ext.base_ntfs_ino;
	MFT_RECORD *m;
	INDEX_ROOT *ir;
	INDEX_ENTRY *ie;
	INDEX_ALLOCATION *ia;
	u8 *index_end, *kaddr;
	ntfs_attr_search_ctx *actx;
	struct address_space *ia_mapping;
	struct page *page;
	int rc, err = 0;

	FUNC15("Entering.");
	FUNC0(!FUNC2(idx_ni));
	FUNC0(idx_ni->type != AT_INDEX_ALLOCATION);
	FUNC0(idx_ni->nr_extents != -1);
	FUNC0(!base_ni);
	FUNC0(!key);
	FUNC0(key_len <= 0);
	if (!FUNC17(
			idx_ni->itype.index.collation_rule)) {
		FUNC16(sb, "Index uses unsupported collation rule 0x%x.  "
				"Aborting lookup.", FUNC7(
				idx_ni->itype.index.collation_rule));
		return -EOPNOTSUPP;
	}
	/* Get hold of the mft record for the index inode. */
	m = FUNC9(base_ni);
	if (FUNC1(m)) {
		FUNC16(sb, "map_mft_record() failed with error code %ld.",
				-FUNC4(m));
		return FUNC4(m);
	}
	actx = FUNC11(base_ni, m);
	if (FUNC24(!actx)) {
		err = -ENOMEM;
		goto err_out;
	}
	/* Find the index root attribute in the mft record. */
	err = FUNC12(AT_INDEX_ROOT, idx_ni->name, idx_ni->name_len,
			CASE_SENSITIVE, 0, NULL, 0, actx);
	if (FUNC24(err)) {
		if (err == -ENOENT) {
			FUNC16(sb, "Index root attribute missing in inode "
					"0x%lx.", idx_ni->mft_no);
			err = -EIO;
		}
		goto err_out;
	}
	/* Get to the index root value (it has been verified in read_inode). */
	ir = (INDEX_ROOT*)((u8*)actx->attr +
			FUNC6(actx->attr->data.resident.value_offset));
	index_end = (u8*)&ir->index + FUNC7(ir->index.index_length);
	/* The first index entry. */
	ie = (INDEX_ENTRY*)((u8*)&ir->index +
			FUNC7(ir->index.entries_offset));
	/*
	 * Loop until we exceed valid memory (corruption case) or until we
	 * reach the last entry.
	 */
	for (;; ie = (INDEX_ENTRY*)((u8*)ie + FUNC6(ie->length))) {
		/* Bounds checks. */
		if ((u8*)ie < (u8*)actx->mrec || (u8*)ie +
				sizeof(INDEX_ENTRY_HEADER) > index_end ||
				(u8*)ie + FUNC6(ie->length) > index_end)
			goto idx_err_out;
		/*
		 * The last entry cannot contain a key.  It can however contain
		 * a pointer to a child node in the B+tree so we just break out.
		 */
		if (ie->flags & INDEX_ENTRY_END)
			break;
		/* Further bounds checks. */
		if ((u32)sizeof(INDEX_ENTRY_HEADER) +
				FUNC6(ie->key_length) >
				FUNC6(ie->data.vi.data_offset) ||
				(u32)FUNC6(ie->data.vi.data_offset) +
				FUNC6(ie->data.vi.data_length) >
				FUNC6(ie->length))
			goto idx_err_out;
		/* If the keys match perfectly, we setup @ictx and return 0. */
		if ((key_len == FUNC6(ie->key_length)) && !FUNC10(key,
				&ie->key, key_len)) {
ir_done:
			ictx->is_in_root = true;
			ictx->ir = ir;
			ictx->actx = actx;
			ictx->base_ni = base_ni;
			ictx->ia = NULL;
			ictx->page = NULL;
done:
			ictx->entry = ie;
			ictx->data = (u8*)ie +
					FUNC6(ie->data.vi.data_offset);
			ictx->data_len = FUNC6(ie->data.vi.data_length);
			FUNC15("Done.");
			return err;
		}
		/*
		 * Not a perfect match, need to do full blown collation so we
		 * know which way in the B+tree we have to go.
		 */
		rc = FUNC14(vol, idx_ni->itype.index.collation_rule, key,
				key_len, &ie->key, FUNC6(ie->key_length));
		/*
		 * If @key collates before the key of the current entry, there
		 * is definitely no such key in this index but we might need to
		 * descend into the B+tree so we just break out of the loop.
		 */
		if (rc == -1)
			break;
		/*
		 * A match should never happen as the memcmp() call should have
		 * cought it, but we still treat it correctly.
		 */
		if (!rc)
			goto ir_done;
		/* The keys are not equal, continue the search. */
	}
	/*
	 * We have finished with this index without success.  Check for the
	 * presence of a child node and if not present setup @ictx and return
	 * -ENOENT.
	 */
	if (!(ie->flags & INDEX_ENTRY_NODE)) {
		FUNC15("Entry not found.");
		err = -ENOENT;
		goto ir_done;
	} /* Child node present, descend into it. */
	/* Consistency check: Verify that an index allocation exists. */
	if (!FUNC3(idx_ni)) {
		FUNC16(sb, "No index allocation attribute but index entry "
				"requires one.  Inode 0x%lx is corrupt or "
				"driver bug.", idx_ni->mft_no);
		goto err_out;
	}
	/* Get the starting vcn of the index_block holding the child node. */
	vcn = FUNC23((sle64*)((u8*)ie + FUNC6(ie->length) - 8));
	ia_mapping = FUNC5(idx_ni)->i_mapping;
	/*
	 * We are done with the index root and the mft record.  Release them,
	 * otherwise we deadlock with ntfs_map_page().
	 */
	FUNC13(actx);
	FUNC26(base_ni);
	m = NULL;
	actx = NULL;
descend_into_child_node:
	/*
	 * Convert vcn to index into the index allocation attribute in units
	 * of PAGE_CACHE_SIZE and map the page cache page, reading it from
	 * disk if necessary.
	 */
	page = FUNC19(ia_mapping, vcn <<
			idx_ni->itype.index.vcn_size_bits >> PAGE_CACHE_SHIFT);
	if (FUNC1(page)) {
		FUNC16(sb, "Failed to map index page, error %ld.",
				-FUNC4(page));
		err = FUNC4(page);
		goto err_out;
	}
	FUNC8(page);
	kaddr = (u8*)FUNC21(page);
fast_descend_into_child_node:
	/* Get to the index allocation block. */
	ia = (INDEX_ALLOCATION*)(kaddr + ((vcn <<
			idx_ni->itype.index.vcn_size_bits) & ~PAGE_CACHE_MASK));
	/* Bounds checks. */
	if ((u8*)ia < kaddr || (u8*)ia > kaddr + PAGE_CACHE_SIZE) {
		FUNC16(sb, "Out of bounds check failed.  Corrupt inode "
				"0x%lx or driver bug.", idx_ni->mft_no);
		goto unm_err_out;
	}
	/* Catch multi sector transfer fixup errors. */
	if (FUNC24(!FUNC18(ia->magic))) {
		FUNC16(sb, "Index record with vcn 0x%llx is corrupt.  "
				"Corrupt inode 0x%lx.  Run chkdsk.",
				(long long)vcn, idx_ni->mft_no);
		goto unm_err_out;
	}
	if (FUNC22(ia->index_block_vcn) != vcn) {
		FUNC16(sb, "Actual VCN (0x%llx) of index buffer is "
				"different from expected VCN (0x%llx).  Inode "
				"0x%lx is corrupt or driver bug.",
				(unsigned long long)
				FUNC22(ia->index_block_vcn),
				(unsigned long long)vcn, idx_ni->mft_no);
		goto unm_err_out;
	}
	if (FUNC7(ia->index.allocated_size) + 0x18 !=
			idx_ni->itype.index.block_size) {
		FUNC16(sb, "Index buffer (VCN 0x%llx) of inode 0x%lx has "
				"a size (%u) differing from the index "
				"specified size (%u).  Inode is corrupt or "
				"driver bug.", (unsigned long long)vcn,
				idx_ni->mft_no,
				FUNC7(ia->index.allocated_size) + 0x18,
				idx_ni->itype.index.block_size);
		goto unm_err_out;
	}
	index_end = (u8*)ia + idx_ni->itype.index.block_size;
	if (index_end > kaddr + PAGE_CACHE_SIZE) {
		FUNC16(sb, "Index buffer (VCN 0x%llx) of inode 0x%lx "
				"crosses page boundary.  Impossible!  Cannot "
				"access!  This is probably a bug in the "
				"driver.", (unsigned long long)vcn,
				idx_ni->mft_no);
		goto unm_err_out;
	}
	index_end = (u8*)&ia->index + FUNC7(ia->index.index_length);
	if (index_end > (u8*)ia + idx_ni->itype.index.block_size) {
		FUNC16(sb, "Size of index buffer (VCN 0x%llx) of inode "
				"0x%lx exceeds maximum size.",
				(unsigned long long)vcn, idx_ni->mft_no);
		goto unm_err_out;
	}
	/* The first index entry. */
	ie = (INDEX_ENTRY*)((u8*)&ia->index +
			FUNC7(ia->index.entries_offset));
	/*
	 * Iterate similar to above big loop but applied to index buffer, thus
	 * loop until we exceed valid memory (corruption case) or until we
	 * reach the last entry.
	 */
	for (;; ie = (INDEX_ENTRY*)((u8*)ie + FUNC6(ie->length))) {
		/* Bounds checks. */
		if ((u8*)ie < (u8*)ia || (u8*)ie +
				sizeof(INDEX_ENTRY_HEADER) > index_end ||
				(u8*)ie + FUNC6(ie->length) > index_end) {
			FUNC16(sb, "Index entry out of bounds in inode "
					"0x%lx.", idx_ni->mft_no);
			goto unm_err_out;
		}
		/*
		 * The last entry cannot contain a key.  It can however contain
		 * a pointer to a child node in the B+tree so we just break out.
		 */
		if (ie->flags & INDEX_ENTRY_END)
			break;
		/* Further bounds checks. */
		if ((u32)sizeof(INDEX_ENTRY_HEADER) +
				FUNC6(ie->key_length) >
				FUNC6(ie->data.vi.data_offset) ||
				(u32)FUNC6(ie->data.vi.data_offset) +
				FUNC6(ie->data.vi.data_length) >
				FUNC6(ie->length)) {
			FUNC16(sb, "Index entry out of bounds in inode "
					"0x%lx.", idx_ni->mft_no);
			goto unm_err_out;
		}
		/* If the keys match perfectly, we setup @ictx and return 0. */
		if ((key_len == FUNC6(ie->key_length)) && !FUNC10(key,
				&ie->key, key_len)) {
ia_done:
			ictx->is_in_root = false;
			ictx->actx = NULL;
			ictx->base_ni = NULL;
			ictx->ia = ia;
			ictx->page = page;
			goto done;
		}
		/*
		 * Not a perfect match, need to do full blown collation so we
		 * know which way in the B+tree we have to go.
		 */
		rc = FUNC14(vol, idx_ni->itype.index.collation_rule, key,
				key_len, &ie->key, FUNC6(ie->key_length));
		/*
		 * If @key collates before the key of the current entry, there
		 * is definitely no such key in this index but we might need to
		 * descend into the B+tree so we just break out of the loop.
		 */
		if (rc == -1)
			break;
		/*
		 * A match should never happen as the memcmp() call should have
		 * cought it, but we still treat it correctly.
		 */
		if (!rc)
			goto ia_done;
		/* The keys are not equal, continue the search. */
	}
	/*
	 * We have finished with this index buffer without success.  Check for
	 * the presence of a child node and if not present return -ENOENT.
	 */
	if (!(ie->flags & INDEX_ENTRY_NODE)) {
		FUNC15("Entry not found.");
		err = -ENOENT;
		goto ia_done;
	}
	if ((ia->index.flags & NODE_MASK) == LEAF_NODE) {
		FUNC16(sb, "Index entry with child node found in a leaf "
				"node in inode 0x%lx.", idx_ni->mft_no);
		goto unm_err_out;
	}
	/* Child node present, descend into it. */
	old_vcn = vcn;
	vcn = FUNC23((sle64*)((u8*)ie + FUNC6(ie->length) - 8));
	if (vcn >= 0) {
		/*
		 * If vcn is in the same page cache page as old_vcn we recycle
		 * the mapped page.
		 */
		if (old_vcn << vol->cluster_size_bits >>
				PAGE_CACHE_SHIFT == vcn <<
				vol->cluster_size_bits >>
				PAGE_CACHE_SHIFT)
			goto fast_descend_into_child_node;
		FUNC25(page);
		FUNC20(page);
		goto descend_into_child_node;
	}
	FUNC16(sb, "Negative child node vcn in inode 0x%lx.",
			idx_ni->mft_no);
unm_err_out:
	FUNC25(page);
	FUNC20(page);
err_out:
	if (!err)
		err = -EIO;
	if (actx)
		FUNC13(actx);
	if (m)
		FUNC26(base_ni);
	return err;
idx_err_out:
	FUNC16(sb, "Corrupt index.  Aborting lookup.");
	goto err_out;
}