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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  DELALLOC ; 
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_get_block ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sector_t FUNC10(struct address_space *mapping, sector_t block)
{
	struct inode *inode = mapping->host;
	journal_t *journal;
	int err;

	if (FUNC8(mapping, PAGECACHE_TAG_DIRTY) &&
			FUNC9(inode->i_sb, DELALLOC)) {
		/*
		 * With delalloc we want to sync the file
		 * so that we can make sure we allocate
		 * blocks for file
		 */
		FUNC3(mapping);
	}

	if (FUNC0(inode) &&
	    FUNC2(inode, EXT4_STATE_JDATA)) {
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
		 * NB. EXT4_STATE_JDATA is not set on files other than
		 * regular files.  If somebody wants to bmap a directory
		 * or symlink and gets confused because the buffer
		 * hasn't yet been flushed to disk, they deserve
		 * everything they get.
		 */

		FUNC1(inode, EXT4_STATE_JDATA);
		journal = FUNC0(inode);
		FUNC6(journal);
		err = FUNC5(journal);
		FUNC7(journal);

		if (err)
			return 0;
	}

	return FUNC4(mapping, block, ext4_get_block);
}