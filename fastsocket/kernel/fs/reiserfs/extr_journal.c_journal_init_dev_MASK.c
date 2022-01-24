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
struct super_block {scalar_t__ s_dev; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct reiserfs_journal {int /*<<< orphan*/ * j_dev_bd; void* j_dev_mode; } ;
typedef  void* fmode_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct reiserfs_journal*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,void*,struct reiserfs_journal*) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct super_block *super,
			    struct reiserfs_journal *journal,
			    const char *jdev_name)
{
	int result;
	dev_t jdev;
	fmode_t blkdev_mode = FMODE_READ | FMODE_WRITE;
	char b[BDEVNAME_SIZE];

	result = 0;

	journal->j_dev_bd = NULL;
	jdev = FUNC2(super) ?
	    FUNC8(FUNC2(super)) : super->s_dev;

	if (FUNC5(super->s_bdev))
		blkdev_mode = FMODE_READ;

	/* there is no "jdev" option and journal is on separate device */
	if ((!jdev_name || !jdev_name[0])) {
		journal->j_dev_bd = FUNC10(jdev, blkdev_mode);
		journal->j_dev_mode = blkdev_mode;
		if (FUNC0(journal->j_dev_bd)) {
			result = FUNC1(journal->j_dev_bd);
			journal->j_dev_bd = NULL;
			FUNC12(super, "sh-458",
					 "cannot init journal device '%s': %i",
					 FUNC3(jdev, b), result);
			return result;
		} else if (jdev != super->s_dev) {
			result = FUNC4(journal->j_dev_bd, journal);
			if (result) {
				FUNC7(journal->j_dev_bd, blkdev_mode);
				return result;
			}

			FUNC13(journal->j_dev_bd, super->s_blocksize);
		}

		return 0;
	}

	journal->j_dev_mode = blkdev_mode;
	journal->j_dev_bd = FUNC9(jdev_name,
						blkdev_mode, journal);
	if (FUNC0(journal->j_dev_bd)) {
		result = FUNC1(journal->j_dev_bd);
		journal->j_dev_bd = NULL;
		FUNC12(super,
				 "journal_init_dev: Cannot open '%s': %i",
				 jdev_name, result);
		return result;
	}

	FUNC13(journal->j_dev_bd, super->s_blocksize);
	FUNC11(super,
		      "journal_init_dev: journal device: %s\n",
		      FUNC6(journal->j_dev_bd, b));
	return 0;
}