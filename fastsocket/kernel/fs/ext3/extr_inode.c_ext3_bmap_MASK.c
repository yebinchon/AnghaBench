#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int i_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int EXT3_STATE_JDATA ; 
 int /*<<< orphan*/  ext3_get_block ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC6(struct address_space *mapping, sector_t block)
{
	struct inode *inode = mapping->host;
	journal_t *journal;
	int err;

	if (FUNC0(inode)->i_state & EXT3_STATE_JDATA) {
		/*
		 * This is a REALLY heavyweight approach, but the use of
		 * bmap on dirty files is expected to be extremely rare:
		 * only if we run lilo or swapon on a freshly made file
		 * do we expect this to happen.
		 *
		 * (bmap requires CAP_SYS_RAWIO so this does not
		 * represent an unprivileged user DOS attack --- we'd be
		 * in trouble if mortal users could trigger this path at
		 * will.)
		 *
		 * NB. EXT3_STATE_JDATA is not set on files other than
		 * regular files.  If somebody wants to bmap a directory
		 * or symlink and gets confused because the buffer
		 * hasn't yet been flushed to disk, they deserve
		 * everything they get.
		 */

		FUNC0(inode)->i_state &= ~EXT3_STATE_JDATA;
		journal = FUNC1(inode);
		FUNC4(journal);
		err = FUNC3(journal);
		FUNC5(journal);

		if (err)
			return 0;
	}

	return FUNC2(mapping,block,ext3_get_block);
}