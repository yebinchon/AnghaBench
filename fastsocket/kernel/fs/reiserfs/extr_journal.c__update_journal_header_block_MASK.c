#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct reiserfs_journal_header {void* j_mount_id; void* j_first_unflushed_offset; void* j_last_flush_trans_id; } ;
struct reiserfs_journal {unsigned int j_last_flush_trans_id; unsigned long j_first_unflushed_offset; unsigned long j_mount_id; TYPE_1__* j_header_bh; } ;
struct TYPE_10__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,TYPE_1__*) ; 
 void* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16(struct super_block *sb,
					unsigned long offset,
					unsigned int trans_id)
{
	struct reiserfs_journal_header *jh;
	struct reiserfs_journal *journal = FUNC0(sb);

	if (FUNC8(journal))
		return -EIO;

	if (trans_id >= journal->j_last_flush_trans_id) {
		if (FUNC1((journal->j_header_bh))) {
			FUNC15((journal->j_header_bh));
			if (FUNC14(!FUNC2(journal->j_header_bh))) {
#ifdef CONFIG_REISERFS_CHECK
				reiserfs_warning(sb, "journal-699",
						 "buffer write failed");
#endif
				return -EIO;
			}
		}
		journal->j_last_flush_trans_id = trans_id;
		journal->j_first_unflushed_offset = offset;
		jh = (struct reiserfs_journal_header *)(journal->j_header_bh->
							b_data);
		jh->j_last_flush_trans_id = FUNC4(trans_id);
		jh->j_first_unflushed_offset = FUNC4(offset);
		jh->j_mount_id = FUNC4(journal->j_mount_id);

		if (FUNC7(sb)) {
			int ret;
			FUNC6(journal->j_header_bh);
			ret = FUNC12(journal->j_header_bh);
			if (ret == -EOPNOTSUPP) {
				FUNC11(journal->j_header_bh);
				FUNC5(sb);
				goto sync;
			}
			FUNC15(journal->j_header_bh);
			FUNC3(sb, journal->j_header_bh);
		} else {
		      sync:
			FUNC10(journal->j_header_bh);
			FUNC13(journal->j_header_bh);
		}
		if (!FUNC2(journal->j_header_bh)) {
			FUNC9(sb, "journal-837",
					 "IO error during journal replay");
			return -EIO;
		}
	}
	return 0;
}