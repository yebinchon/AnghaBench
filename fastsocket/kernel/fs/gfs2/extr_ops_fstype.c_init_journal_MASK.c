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
struct inode {int dummy; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_6__ {scalar_t__ ar_spectator; } ;
struct TYPE_5__ {int ls_jid; scalar_t__ ls_first; } ;
struct gfs2_sbd {unsigned int sd_journals; int /*<<< orphan*/  sd_jindex; struct gfs2_holder sd_journal_gh; TYPE_3__ sd_args; struct gfs2_holder sd_jinode_gh; int /*<<< orphan*/  sd_flags; struct gfs2_jdesc* sd_jdesc; TYPE_2__ sd_lockstruct; int /*<<< orphan*/  sd_log_blks_free; TYPE_1__* sd_master_dir; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_blocks; int /*<<< orphan*/  jd_jid; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EUSERS ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GL_EXACT ; 
 int GL_NOCACHE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int LM_FLAG_NOEXP ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDF_JOURNAL_CHECKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_sbd*,struct gfs2_jdesc*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int FUNC10 (struct gfs2_jdesc*) ; 
 void* FUNC11 (struct gfs2_sbd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 
 int FUNC13 (struct gfs2_sbd*,struct gfs2_holder*) ; 
 int FUNC14 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  gfs2_journal_glops ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_sbd*) ; 
 int FUNC17 (struct gfs2_jdesc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct gfs2_sbd *sdp, int undo)
{
	struct inode *master = sdp->sd_master_dir->d_inode;
	struct gfs2_holder ji_gh;
	struct gfs2_inode *ip;
	int jindex = 1;
	int error = 0;

	if (undo) {
		jindex = 0;
		goto fail_jinode_gh;
	}

	sdp->sd_jindex = FUNC15(master, "jindex");
	if (FUNC1(sdp->sd_jindex)) {
		FUNC6(sdp, "can't lookup journal index: %d\n", error);
		return FUNC2(sdp->sd_jindex);
	}

	/* Load in the journal index special file */

	error = FUNC13(sdp, &ji_gh);
	if (error) {
		FUNC6(sdp, "can't read journal index: %d\n", error);
		goto fail;
	}

	error = -EUSERS;
	if (!FUNC14(sdp)) {
		FUNC6(sdp, "no journals!\n");
		goto fail_jindex;
	}

	if (sdp->sd_args.ar_spectator) {
		sdp->sd_jdesc = FUNC11(sdp, 0);
		FUNC4(&sdp->sd_log_blks_free, sdp->sd_jdesc->jd_blocks);
	} else {
		if (sdp->sd_lockstruct.ls_jid >= FUNC14(sdp)) {
			FUNC6(sdp, "can't mount journal #%u\n",
			       sdp->sd_lockstruct.ls_jid);
			FUNC6(sdp, "there are only %u journals (0 - %u)\n",
			       FUNC14(sdp),
			       FUNC14(sdp) - 1);
			goto fail_jindex;
		}
		sdp->sd_jdesc = FUNC11(sdp, sdp->sd_lockstruct.ls_jid);

		error = FUNC9(sdp, sdp->sd_lockstruct.ls_jid,
					  &gfs2_journal_glops,
					  LM_ST_EXCLUSIVE, LM_FLAG_NOEXP,
					  &sdp->sd_journal_gh);
		if (error) {
			FUNC6(sdp, "can't acquire journal glock: %d\n", error);
			goto fail_jindex;
		}

		ip = FUNC0(sdp->sd_jdesc->jd_inode);
		error = FUNC8(ip->i_gl, LM_ST_SHARED,
					   LM_FLAG_NOEXP | GL_EXACT | GL_NOCACHE,
					   &sdp->sd_jinode_gh);
		if (error) {
			FUNC6(sdp, "can't acquire journal inode glock: %d\n",
			       error);
			goto fail_journal_gh;
		}

		error = FUNC10(sdp->sd_jdesc);
		if (error) {
			FUNC6(sdp, "my journal (%u) is bad: %d\n",
			       sdp->sd_jdesc->jd_jid, error);
			goto fail_jinode_gh;
		}
		FUNC4(&sdp->sd_log_blks_free, sdp->sd_jdesc->jd_blocks);

		/* Map the extents for this journal's blocks */
		FUNC19(sdp);
	}
	FUNC21(sdp, FUNC3(&sdp->sd_log_blks_free));

	if (sdp->sd_lockstruct.ls_first) {
		unsigned int x;
		for (x = 0; x < sdp->sd_journals; x++) {
			struct gfs2_jdesc *jd = FUNC11(sdp, x);

			if (sdp->sd_args.ar_spectator) {
				error = FUNC5(sdp, jd);
				if (error)
					goto fail_jinode_gh;
				continue;
			}
			error = FUNC17(jd);
			if (error) {
				FUNC6(sdp, "error recovering journal %u: %d\n",
				       x, error);
				goto fail_jinode_gh;
			}
		}

		FUNC16(sdp);
	} else if (!sdp->sd_args.ar_spectator) {
		error = FUNC17(sdp->sd_jdesc);
		if (error) {
			FUNC6(sdp, "error recovering my journal: %d\n", error);
			goto fail_jinode_gh;
		}
	}

	FUNC20(SDF_JOURNAL_CHECKED, &sdp->sd_flags);
	FUNC7(&ji_gh);
	jindex = 0;

	return 0;

fail_jinode_gh:
	if (!sdp->sd_args.ar_spectator)
		FUNC7(&sdp->sd_jinode_gh);
fail_journal_gh:
	if (!sdp->sd_args.ar_spectator)
		FUNC7(&sdp->sd_journal_gh);
fail_jindex:
	FUNC12(sdp);
	if (jindex)
		FUNC7(&ji_gh);
fail:
	FUNC18(sdp->sd_jindex);
	return error;
}