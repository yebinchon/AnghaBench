#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_54__   TYPE_6__ ;
typedef  struct TYPE_53__   TYPE_5__ ;
typedef  struct TYPE_52__   TYPE_4__ ;
typedef  struct TYPE_51__   TYPE_3__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_1__ ;
typedef  struct TYPE_48__   TYPE_16__ ;

/* Type definitions */
struct TYPE_51__ {int /*<<< orphan*/  t_flags; } ;
typedef  TYPE_3__ xfs_trans_t ;
typedef  scalar_t__ xfs_rfsblock_t ;
struct TYPE_48__ {scalar_t__ sb_dblocks; int sb_imax_pct; int sb_agblocks; int sb_agcount; scalar_t__ sb_inopblog; int /*<<< orphan*/  sb_blocksize; int /*<<< orphan*/  sb_sectsize; } ;
struct TYPE_52__ {int m_maxagi; TYPE_16__ m_sb; int /*<<< orphan*/  m_ddev_targp; scalar_t__ m_maxicount; } ;
typedef  TYPE_4__ xfs_mount_t ;
struct TYPE_53__ {scalar_t__ newblocks; int imaxpct; } ;
typedef  TYPE_5__ xfs_growfs_data_t ;
typedef  scalar_t__ xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
struct TYPE_54__ {void* ar_blockcount; void* ar_startblock; } ;
typedef  TYPE_6__ xfs_alloc_rec_t ;
typedef  int xfs_agnumber_t ;
struct TYPE_49__ {void* bb_rightsib; void* bb_leftsib; } ;
struct TYPE_50__ {TYPE_1__ s; } ;
struct xfs_btree_block {void* agf_length; void* agi_length; TYPE_2__ bb_u; void* bb_numrecs; scalar_t__ bb_level; void* bb_magic; void** agi_unlinked; void* agi_dirino; void* agi_newino; scalar_t__ agi_freecount; void* agi_level; void* agi_root; scalar_t__ agi_count; void* agi_seqno; void* agi_versionnum; void* agi_magicnum; void* agf_longest; void* agf_freeblks; scalar_t__ agf_flcount; void* agf_fllast; scalar_t__ agf_flfirst; void** agf_levels; void** agf_roots; void* agf_seqno; void* agf_versionnum; void* agf_magicnum; } ;
typedef  struct xfs_btree_block xfs_agi_t ;
typedef  struct xfs_btree_block xfs_agf_t ;
typedef  scalar_t__ __uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ NULLAGBLOCK ; 
 scalar_t__ NULLAGINO ; 
 int XBF_LOCK ; 
 int XBF_MAPPED ; 
 scalar_t__ XFS_ABTB_MAGIC ; 
 scalar_t__ XFS_ABTC_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,scalar_t__) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  XFS_AGF_LENGTH ; 
 scalar_t__ XFS_AGF_MAGIC ; 
 scalar_t__ XFS_AGF_VERSION ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  XFS_AGI_LENGTH ; 
 scalar_t__ XFS_AGI_MAGIC ; 
 int XFS_AGI_UNLINKED_BUCKETS ; 
 scalar_t__ XFS_AGI_VERSION ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC9 (TYPE_4__*,struct xfs_btree_block*,int) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 size_t XFS_BTNUM_BNOi ; 
 size_t XFS_BTNUM_CNTi ; 
 struct xfs_btree_block* FUNC11 (int /*<<< orphan*/ *) ; 
 struct xfs_btree_block* FUNC12 (int /*<<< orphan*/ *) ; 
 struct xfs_btree_block* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC18 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 scalar_t__ FUNC21 (TYPE_4__*) ; 
 scalar_t__ XFS_IBT_MAGIC ; 
 scalar_t__ XFS_MIN_AG_BLOCKS ; 
 scalar_t__ FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  XFS_SB_ALL_BITS ; 
 scalar_t__ FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_GROWFS ; 
 int /*<<< orphan*/  XFS_TRANS_RESERVE ; 
 int /*<<< orphan*/  XFS_TRANS_SB_AGCOUNT ; 
 int /*<<< orphan*/  XFS_TRANS_SB_DBLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_FDBLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_IMAXPCT ; 
 int /*<<< orphan*/  FUNC24 (void**,scalar_t__) ; 
 scalar_t__ FUNC25 (void*) ; 
 void* FUNC26 (int) ; 
 void* FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_btree_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC31 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC33 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int FUNC35 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC36 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC38 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ **) ; 
 int FUNC39 (TYPE_4__*,int,int*) ; 
 int FUNC40 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,TYPE_16__*,int /*<<< orphan*/ ) ; 
 int FUNC42 (TYPE_16__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__*,scalar_t__) ; 
 TYPE_3__* FUNC45 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC47 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC49 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_4__*,char*,int,int) ; 

__attribute__((used)) static int
FUNC51(
	xfs_mount_t		*mp,		/* mount point for filesystem */
	xfs_growfs_data_t	*in)		/* growfs data input struct */
{
	xfs_agf_t		*agf;
	xfs_agi_t		*agi;
	xfs_agnumber_t		agno;
	xfs_extlen_t		agsize;
	xfs_extlen_t		tmpsize;
	xfs_alloc_rec_t		*arec;
	struct xfs_btree_block	*block;
	xfs_buf_t		*bp;
	int			bucket;
	int			dpct;
	int			error;
	xfs_agnumber_t		nagcount;
	xfs_agnumber_t		nagimax = 0;
	xfs_rfsblock_t		nb, nb_mod;
	xfs_rfsblock_t		new;
	xfs_rfsblock_t		nfree;
	xfs_agnumber_t		oagcount;
	int			pct;
	xfs_trans_t		*tp;

	nb = in->newblocks;
	pct = in->imaxpct;
	if (nb < mp->m_sb.sb_dblocks || pct < 0 || pct > 100)
		return FUNC16(EINVAL);
	if ((error = FUNC42(&mp->m_sb, nb)))
		return error;
	dpct = pct - mp->m_sb.sb_imax_pct;
	bp = FUNC33(mp, mp->m_ddev_targp,
				FUNC17(mp, nb) - FUNC18(mp, 1),
				FUNC1(FUNC18(mp, 1)), 0);
	if (!bp)
		return EIO;
	FUNC34(bp);

	new = nb;	/* use new as a temporary here */
	nb_mod = FUNC28(new, mp->m_sb.sb_agblocks);
	nagcount = new + (nb_mod != 0);
	if (nb_mod && nb_mod < XFS_MIN_AG_BLOCKS) {
		nagcount--;
		nb = (xfs_rfsblock_t)nagcount * mp->m_sb.sb_agblocks;
		if (nb < mp->m_sb.sb_dblocks)
			return FUNC16(EINVAL);
	}
	new = nb - mp->m_sb.sb_dblocks;
	oagcount = mp->m_sb.sb_agcount;

	/* allocate the new per-ag structures */
	if (nagcount > oagcount) {
		error = FUNC39(mp, nagcount, &nagimax);
		if (error)
			return error;
	}

	tp = FUNC45(mp, XFS_TRANS_GROWFS);
	tp->t_flags |= XFS_TRANS_RESERVE;
	if ((error = FUNC49(tp, FUNC20(mp),
			FUNC19(mp), 0, 0, 0))) {
		FUNC46(tp, 0);
		return error;
	}

	/*
	 * Write new AG headers to disk. Non-transactional, but written
	 * synchronously so they are completed prior to the growfs transaction
	 * being logged.
	 */
	nfree = 0;
	for (agno = nagcount - 1; agno >= oagcount; agno--, new -= agsize) {
		/*
		 * AG freelist header block
		 */
		bp = FUNC32(mp->m_ddev_targp,
				 FUNC8(mp, agno, FUNC6(mp)),
				 FUNC18(mp, 1), XBF_LOCK | XBF_MAPPED);
		if (!bp) {
			error = ENOMEM;
			goto error0;
		}
		agf = FUNC11(bp);
		FUNC29(agf, 0, mp->m_sb.sb_sectsize);
		agf->agf_magicnum = FUNC27(XFS_AGF_MAGIC);
		agf->agf_versionnum = FUNC27(XFS_AGF_VERSION);
		agf->agf_seqno = FUNC27(agno);
		if (agno == nagcount - 1)
			agsize =
				nb -
				(agno * (xfs_rfsblock_t)mp->m_sb.sb_agblocks);
		else
			agsize = mp->m_sb.sb_agblocks;
		agf->agf_length = FUNC27(agsize);
		agf->agf_roots[XFS_BTNUM_BNOi] = FUNC27(FUNC10(mp));
		agf->agf_roots[XFS_BTNUM_CNTi] = FUNC27(FUNC15(mp));
		agf->agf_levels[XFS_BTNUM_BNOi] = FUNC27(1);
		agf->agf_levels[XFS_BTNUM_CNTi] = FUNC27(1);
		agf->agf_flfirst = 0;
		agf->agf_fllast = FUNC27(FUNC5(mp) - 1);
		agf->agf_flcount = 0;
		tmpsize = agsize - FUNC22(mp);
		agf->agf_freeblks = FUNC27(tmpsize);
		agf->agf_longest = FUNC27(tmpsize);
		error = FUNC35(mp, bp);
		if (error) {
			goto error0;
		}
		/*
		 * AG inode header block
		 */
		bp = FUNC32(mp->m_ddev_targp,
				 FUNC8(mp, agno, FUNC7(mp)),
				 FUNC18(mp, 1), XBF_LOCK | XBF_MAPPED);
		if (!bp) {
			error = ENOMEM;
			goto error0;
		}
		agi = FUNC12(bp);
		FUNC29(agi, 0, mp->m_sb.sb_sectsize);
		agi->agi_magicnum = FUNC27(XFS_AGI_MAGIC);
		agi->agi_versionnum = FUNC27(XFS_AGI_VERSION);
		agi->agi_seqno = FUNC27(agno);
		agi->agi_length = FUNC27(agsize);
		agi->agi_count = 0;
		agi->agi_root = FUNC27(FUNC21(mp));
		agi->agi_level = FUNC27(1);
		agi->agi_freecount = 0;
		agi->agi_newino = FUNC27(NULLAGINO);
		agi->agi_dirino = FUNC27(NULLAGINO);
		for (bucket = 0; bucket < XFS_AGI_UNLINKED_BUCKETS; bucket++)
			agi->agi_unlinked[bucket] = FUNC27(NULLAGINO);
		error = FUNC35(mp, bp);
		if (error) {
			goto error0;
		}
		/*
		 * BNO btree root block
		 */
		bp = FUNC32(mp->m_ddev_targp,
				 FUNC3(mp, agno, FUNC10(mp)),
				 FUNC2(mp->m_sb.sb_blocksize),
				 XBF_LOCK | XBF_MAPPED);
		if (!bp) {
			error = ENOMEM;
			goto error0;
		}
		block = FUNC13(bp);
		FUNC29(block, 0, mp->m_sb.sb_blocksize);
		block->bb_magic = FUNC27(XFS_ABTB_MAGIC);
		block->bb_level = 0;
		block->bb_numrecs = FUNC26(1);
		block->bb_u.s.bb_leftsib = FUNC27(NULLAGBLOCK);
		block->bb_u.s.bb_rightsib = FUNC27(NULLAGBLOCK);
		arec = FUNC9(mp, block, 1);
		arec->ar_startblock = FUNC27(FUNC22(mp));
		arec->ar_blockcount = FUNC27(
			agsize - FUNC25(arec->ar_startblock));
		error = FUNC35(mp, bp);
		if (error) {
			goto error0;
		}
		/*
		 * CNT btree root block
		 */
		bp = FUNC32(mp->m_ddev_targp,
				 FUNC3(mp, agno, FUNC15(mp)),
				 FUNC2(mp->m_sb.sb_blocksize),
				 XBF_LOCK | XBF_MAPPED);
		if (!bp) {
			error = ENOMEM;
			goto error0;
		}
		block = FUNC13(bp);
		FUNC29(block, 0, mp->m_sb.sb_blocksize);
		block->bb_magic = FUNC27(XFS_ABTC_MAGIC);
		block->bb_level = 0;
		block->bb_numrecs = FUNC26(1);
		block->bb_u.s.bb_leftsib = FUNC27(NULLAGBLOCK);
		block->bb_u.s.bb_rightsib = FUNC27(NULLAGBLOCK);
		arec = FUNC9(mp, block, 1);
		arec->ar_startblock = FUNC27(FUNC22(mp));
		arec->ar_blockcount = FUNC27(
			agsize - FUNC25(arec->ar_startblock));
		nfree += FUNC25(arec->ar_blockcount);
		error = FUNC35(mp, bp);
		if (error) {
			goto error0;
		}
		/*
		 * INO btree root block
		 */
		bp = FUNC32(mp->m_ddev_targp,
				 FUNC3(mp, agno, FUNC21(mp)),
				 FUNC2(mp->m_sb.sb_blocksize),
				 XBF_LOCK | XBF_MAPPED);
		if (!bp) {
			error = ENOMEM;
			goto error0;
		}
		block = FUNC13(bp);
		FUNC29(block, 0, mp->m_sb.sb_blocksize);
		block->bb_magic = FUNC27(XFS_IBT_MAGIC);
		block->bb_level = 0;
		block->bb_numrecs = 0;
		block->bb_u.s.bb_leftsib = FUNC27(NULLAGBLOCK);
		block->bb_u.s.bb_rightsib = FUNC27(NULLAGBLOCK);
		error = FUNC35(mp, bp);
		if (error) {
			goto error0;
		}
	}
	FUNC44(tp, nfree);
	/*
	 * There are new blocks in the old last a.g.
	 */
	if (new) {
		/*
		 * Change the agi length.
		 */
		error = FUNC38(mp, tp, agno, &bp);
		if (error) {
			goto error0;
		}
		FUNC0(*bp);
		agi = FUNC12(bp);
		FUNC24(&agi->agi_length, new);
		FUNC0(nagcount == oagcount ||
		       FUNC25(agi->agi_length) == mp->m_sb.sb_agblocks);
		FUNC37(tp, bp, XFS_AGI_LENGTH);
		/*
		 * Change agf length.
		 */
		error = FUNC31(mp, tp, agno, 0, &bp);
		if (error) {
			goto error0;
		}
		FUNC0(*bp);
		agf = FUNC11(bp);
		FUNC24(&agf->agf_length, new);
		FUNC0(FUNC25(agf->agf_length) ==
		       FUNC25(agi->agi_length));

		FUNC30(tp, bp, XFS_AGF_LENGTH);
		/*
		 * Free the new space.
		 */
		error = FUNC36(tp, FUNC4(mp, agno,
			FUNC25(agf->agf_length) - new), new);
		if (error) {
			goto error0;
		}
	}

	/*
	 * Update changed superblock fields transactionally. These are not
	 * seen by the rest of the world until the transaction commit applies
	 * them atomically to the superblock.
	 */
	if (nagcount > oagcount)
		FUNC48(tp, XFS_TRANS_SB_AGCOUNT, nagcount - oagcount);
	if (nb > mp->m_sb.sb_dblocks)
		FUNC48(tp, XFS_TRANS_SB_DBLOCKS,
				 nb - mp->m_sb.sb_dblocks);
	if (nfree)
		FUNC48(tp, XFS_TRANS_SB_FDBLOCKS, nfree);
	if (dpct)
		FUNC48(tp, XFS_TRANS_SB_IMAXPCT, dpct);
	error = FUNC47(tp, 0);
	if (error)
		return error;

	/* New allocation groups fully initialized, so update mount struct */
	if (nagimax)
		mp->m_maxagi = nagimax;
	if (mp->m_sb.sb_imax_pct) {
		__uint64_t icount = mp->m_sb.sb_dblocks * mp->m_sb.sb_imax_pct;
		FUNC28(icount, 100);
		mp->m_maxicount = icount << mp->m_sb.sb_inopblog;
	} else
		mp->m_maxicount = 0;
	FUNC43(mp);

	/* update secondary superblocks. */
	for (agno = 1; agno < nagcount; agno++) {
		error = FUNC40(mp, mp->m_ddev_targp,
				  FUNC3(mp, agno, FUNC23(mp)),
				  FUNC18(mp, 1), 0, &bp);
		if (error) {
			FUNC50(mp,
		"error %d reading secondary superblock for ag %d",
				error, agno);
			break;
		}
		FUNC41(FUNC14(bp), &mp->m_sb, XFS_SB_ALL_BITS);
		/*
		 * If we get an error writing out the alternate superblocks,
		 * just issue a warning and continue.  The real work is
		 * already done and committed.
		 */
		if (!(error = FUNC35(mp, bp))) {
			continue;
		} else {
			FUNC50(mp,
		"write error %d updating secondary superblock for ag %d",
				error, agno);
			break; /* no point in continuing */
		}
	}
	return 0;

 error0:
	FUNC46(tp, XFS_TRANS_ABORT);
	return error;
}