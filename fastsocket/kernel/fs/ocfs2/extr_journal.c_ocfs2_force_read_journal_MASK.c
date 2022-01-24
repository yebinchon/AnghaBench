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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_size; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int CONCURRENT_JOURNAL_FILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct buffer_head**) ; 

__attribute__((used)) static int FUNC9(struct inode *inode)
{
	int status = 0;
	int i;
	u64 v_blkno, p_blkno, p_blocks, num_blocks;
#define CONCURRENT_JOURNAL_FILL 32ULL
	struct buffer_head *bhs[CONCURRENT_JOURNAL_FILL];

	FUNC3();

	FUNC2(bhs, 0, sizeof(struct buffer_head *) * CONCURRENT_JOURNAL_FILL);

	num_blocks = FUNC6(inode->i_sb, inode->i_size);
	v_blkno = 0;
	while (v_blkno < num_blocks) {
		status = FUNC7(inode, v_blkno,
						     &p_blkno, &p_blocks, NULL);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}

		if (p_blocks > CONCURRENT_JOURNAL_FILL)
			p_blocks = CONCURRENT_JOURNAL_FILL;

		/* We are reading journal data which should not
		 * be put in the uptodate cache */
		status = FUNC8(FUNC0(inode->i_sb),
						p_blkno, p_blocks, bhs);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}

		for(i = 0; i < p_blocks; i++) {
			FUNC1(bhs[i]);
			bhs[i] = NULL;
		}

		v_blkno += p_blocks;
	}

bail:
	for(i = 0; i < CONCURRENT_JOURNAL_FILL; i++)
		FUNC1(bhs[i]);
	FUNC5(status);
	return status;
}