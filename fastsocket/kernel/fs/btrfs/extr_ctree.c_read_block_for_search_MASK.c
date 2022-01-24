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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__ reada; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC9 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root*,struct btrfs_path*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct btrfs_path *p,
		       struct extent_buffer **eb_ret, int level, int slot,
		       struct btrfs_key *key, u64 time_seq)
{
	u64 blocknr;
	u64 gen;
	u32 blocksize;
	struct extent_buffer *b = *eb_ret;
	struct extent_buffer *tmp;
	int ret;

	blocknr = FUNC3(b, slot);
	gen = FUNC4(b, slot);
	blocksize = FUNC2(root, level - 1);

	tmp = FUNC1(root, blocknr, blocksize);
	if (tmp) {
		/* first we do an atomic uptodate check */
		if (FUNC0(tmp, 0, 1) > 0) {
			if (FUNC0(tmp, gen, 1) > 0) {
				/*
				 * we found an up to date block without
				 * sleeping, return
				 * right away
				 */
				*eb_ret = tmp;
				return 0;
			}
			/* the pages were up to date, but we failed
			 * the generation number check.  Do a full
			 * read for the generation number that is correct.
			 * We must do this without dropping locks so
			 * we can trust our generation number
			 */
			FUNC8(tmp);
			FUNC6(p);

			/* now we're allowed to do a blocking uptodate check */
			tmp = FUNC9(root, blocknr, blocksize, gen);
			if (tmp && FUNC0(tmp, gen, 0) > 0) {
				*eb_ret = tmp;
				return 0;
			}
			FUNC8(tmp);
			FUNC5(p);
			return -EIO;
		}
	}

	/*
	 * reduce lock contention at high levels
	 * of the btree by dropping locks before
	 * we read.  Don't release the lock on the current
	 * level because we need to walk this node to figure
	 * out which blocks to read.
	 */
	FUNC7(p, level + 1);
	FUNC6(p);

	FUNC8(tmp);
	if (p->reada)
		FUNC10(root, p, level, slot, key->objectid);

	FUNC5(p);

	ret = -EAGAIN;
	tmp = FUNC9(root, blocknr, blocksize, 0);
	if (tmp) {
		/*
		 * If the read above didn't mark this buffer up to date,
		 * it will never end up being up to date.  Set ret to EIO now
		 * and give up so that our caller doesn't loop forever
		 * on our EAGAINs.
		 */
		if (!FUNC0(tmp, 0, 0))
			ret = -EIO;
		FUNC8(tmp);
	}
	return ret;
}