#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_bdi; int /*<<< orphan*/  ns_crc_seed; } ;
struct page {int dummy; } ;
struct TYPE_4__ {scalar_t__ scnt; int flags; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_gc_inodes; int /*<<< orphan*/  sc_dirty_files; TYPE_2__ sc_stage; TYPE_1__* sc_curseg; int /*<<< orphan*/ * sc_super_root; int /*<<< orphan*/  sc_seg_ctime; int /*<<< orphan*/  sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_ifile; struct the_nilfs* s_nilfs; } ;
struct TYPE_3__ {int /*<<< orphan*/  sb_sum; } ;

/* Variables and functions */
 int NILFS_CF_HISTORY_MASK ; 
 int NILFS_CF_IFILE_STARTED ; 
 int /*<<< orphan*/  NILFS_SC_DIRTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NILFS_ST_DONE ; 
 scalar_t__ NILFS_ST_INIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sc_info*,struct page*,int) ; 
 int FUNC5 (struct nilfs_sc_info*,int) ; 
 int FUNC6 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nilfs_sc_info*,struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_sc_info*,struct nilfs_sb_info*) ; 
 scalar_t__ FUNC10 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_sc_info*) ; 
 int FUNC12 (struct nilfs_sc_info*,struct the_nilfs*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct nilfs_sc_info*,struct the_nilfs*,int) ; 
 int FUNC16 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int FUNC20 (struct nilfs_sc_info*,struct page**) ; 
 int /*<<< orphan*/  FUNC21 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct nilfs_sc_info *sci, int mode)
{
	struct nilfs_sb_info *sbi = sci->sc_sbi;
	struct the_nilfs *nilfs = sbi->s_nilfs;
	struct page *failed_page;
	int err, has_sr = 0;

	sci->sc_stage.scnt = NILFS_ST_INIT;

	err = FUNC8(sci, sbi);
	if (FUNC25(err))
		goto out;

	if (FUNC23(sbi))
		FUNC24(NILFS_SC_DIRTY, &sci->sc_flags);

	if (FUNC10(sci))
		goto out;

	do {
		sci->sc_stage.flags &= ~NILFS_CF_HISTORY_MASK;

		err = FUNC6(sci, nilfs);
		if (FUNC25(err))
			goto out;

		/* Update time stamp */
		sci->sc_seg_ctime = FUNC1();

		err = FUNC12(sci, nilfs, mode);
		if (FUNC25(err))
			goto failed;

		has_sr = (sci->sc_super_root != NULL);

		/* Avoid empty segment */
		if (sci->sc_stage.scnt == NILFS_ST_DONE &&
		    FUNC0(&sci->sc_curseg->sb_sum)) {
			FUNC15(sci, nilfs, 1);
			goto out;
		}

		err = FUNC5(sci, mode);
		if (FUNC25(err))
			goto failed;

		if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
			FUNC18(sci, sbi->s_ifile);

		if (has_sr) {
			err = FUNC16(sci);
			if (FUNC25(err))
				goto failed_to_make_up;

			FUNC19(sci, nilfs);
		}
		FUNC21(sci, nilfs->ns_sufile);

		/* Write partial segments */
		err = FUNC20(sci, &failed_page);
		if (FUNC25(err))
			goto failed_to_write;

		FUNC17(sci, nilfs->ns_crc_seed);

		err = FUNC22(sci, nilfs->ns_bdi);
		if (FUNC25(err))
			goto failed_to_write;

		FUNC13(sci);

		/* Commit segments */
		if (has_sr)
			FUNC11(sci);

		FUNC15(sci, nilfs, 0);

	} while (sci->sc_stage.scnt != NILFS_ST_DONE);

 out:
	FUNC14(sci);
	FUNC9(sci, sbi);
	return err;

 failed_to_write:
	FUNC4(sci, failed_page, err);
	FUNC7(sci, nilfs->ns_sufile);

 failed_to_make_up:
	if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
		FUNC3(&sci->sc_dirty_files);

 failed:
	if (FUNC2())
		FUNC3(&sci->sc_gc_inodes);
	FUNC15(sci, nilfs, err);
	goto out;
}