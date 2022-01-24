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
typedef  int u8 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct extent_buffer* commit_root; } ;
struct btrfs_path {int lowest_level; int* locks; int* slots; int /*<<< orphan*/  leave_spinning; int /*<<< orphan*/  search_for_split; struct extent_buffer** nodes; scalar_t__ skip_locking; scalar_t__ search_commit_root; scalar_t__ keep_locks; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 void* BTRFS_READ_LOCK ; 
 void* BTRFS_WRITE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct extent_buffer*,struct btrfs_key*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*,struct extent_buffer*,void*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct btrfs_root*,struct extent_buffer*) ; 
 struct extent_buffer* FUNC7 (struct btrfs_root*) ; 
 struct extent_buffer* FUNC8 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 struct extent_buffer* FUNC10 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int FUNC15 (struct extent_buffer*) ; 
 int FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_buffer*) ; 
 int FUNC20 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct extent_buffer**,int,int,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct extent_buffer*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ; 
 int FUNC23 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct btrfs_path*,int,int,int,int*) ; 

int FUNC25(struct btrfs_trans_handle *trans, struct btrfs_root
		      *root, struct btrfs_key *key, struct btrfs_path *p, int
		      ins_len, int cow)
{
	struct extent_buffer *b;
	int slot;
	int ret;
	int err;
	int level;
	int lowest_unlock = 1;
	int root_lock;
	/* everything at write_lock_level or lower must be write locked */
	int write_lock_level = 0;
	u8 lowest_level = 0;
	int min_write_lock_level;

	lowest_level = p->lowest_level;
	FUNC1(lowest_level && ins_len > 0);
	FUNC1(p->nodes[0] != NULL);

	if (ins_len < 0) {
		lowest_unlock = 2;

		/* when we are removing items, we might have to go up to level
		 * two as we update tree pointers  Make sure we keep write
		 * for those levels as well
		 */
		write_lock_level = 2;
	} else if (ins_len > 0) {
		/*
		 * for inserting items, make sure we have a write lock on
		 * level 1 so we can update keys
		 */
		write_lock_level = 1;
	}

	if (!cow)
		write_lock_level = -1;

	if (cow && (p->keep_locks || p->lowest_level))
		write_lock_level = BTRFS_MAX_LEVEL;

	min_write_lock_level = write_lock_level;

again:
	/*
	 * we try very hard to do read locks on the root
	 */
	root_lock = BTRFS_READ_LOCK;
	level = 0;
	if (p->search_commit_root) {
		/*
		 * the commit roots are read only
		 * so we always do read locks
		 */
		b = root->commit_root;
		FUNC18(b);
		level = FUNC5(b);
		if (!p->skip_locking)
			FUNC13(b);
	} else {
		if (p->skip_locking) {
			b = FUNC10(root);
			level = FUNC5(b);
		} else {
			/* we don't know the level of the root node
			 * until we actually have it read locked
			 */
			b = FUNC8(root);
			level = FUNC5(b);
			if (level <= write_lock_level) {
				/* whoops, must trade for write lock */
				FUNC14(b);
				FUNC19(b);
				b = FUNC7(root);
				root_lock = BTRFS_WRITE_LOCK;

				/* the level might have changed, check again */
				level = FUNC5(b);
			}
		}
	}
	p->nodes[level] = b;
	if (!p->skip_locking)
		p->locks[level] = root_lock;

	while (b) {
		level = FUNC5(b);

		/*
		 * setup the path here so we can release it under lock
		 * contention with the cow code
		 */
		if (cow) {
			/*
			 * if we don't really need to cow this block
			 * then we don't want to set the path blocking,
			 * so we test it here
			 */
			if (!FUNC22(trans, root, b))
				goto cow_done;

			FUNC11(p);

			/*
			 * must have write locks on this node and the
			 * parent
			 */
			if (level + 1 > write_lock_level) {
				write_lock_level = level + 1;
				FUNC9(p);
				goto again;
			}

			err = FUNC4(trans, root, b,
					      p->nodes[level + 1],
					      p->slots[level + 1], &b);
			if (err) {
				ret = err;
				goto done;
			}
		}
cow_done:
		FUNC0(!cow && ins_len);

		p->nodes[level] = b;
		FUNC3(p, NULL, 0);

		/*
		 * we have a lock on b and as long as we aren't changing
		 * the tree, there is no way to for the items in b to change.
		 * It is safe to drop the lock on our parent before we
		 * go through the expensive btree search on b.
		 *
		 * If cow is true, then we might be changing slot zero,
		 * which may require changing the parent.  So, we can't
		 * drop the lock until after we know which slot we're
		 * operating on.
		 */
		if (!cow)
			FUNC17(p, level + 1);

		ret = FUNC2(b, key, level, &slot);

		if (level != 0) {
			int dec = 0;
			if (ret && slot > 0) {
				dec = 1;
				slot -= 1;
			}
			p->slots[level] = slot;
			err = FUNC21(trans, root, p, b, level,
					     ins_len, &write_lock_level);
			if (err == -EAGAIN)
				goto again;
			if (err) {
				ret = err;
				goto done;
			}
			b = p->nodes[level];
			slot = p->slots[level];

			/*
			 * slot 0 is special, if we change the key
			 * we have to update the parent pointer
			 * which means we must have a write lock
			 * on the parent
			 */
			if (slot == 0 && cow &&
			    write_lock_level < level + 1) {
				write_lock_level = level + 1;
				FUNC9(p);
				goto again;
			}

			FUNC24(p, level, lowest_unlock,
				  min_write_lock_level, &write_lock_level);

			if (level == lowest_level) {
				if (dec)
					p->slots[level]++;
				goto done;
			}

			err = FUNC20(trans, root, p,
						    &b, level, slot, key, 0);
			if (err == -EAGAIN)
				goto again;
			if (err) {
				ret = err;
				goto done;
			}

			if (!p->skip_locking) {
				level = FUNC5(b);
				if (level <= write_lock_level) {
					err = FUNC16(b);
					if (!err) {
						FUNC11(p);
						FUNC12(b);
						FUNC3(p, b,
								  BTRFS_WRITE_LOCK);
					}
					p->locks[level] = BTRFS_WRITE_LOCK;
				} else {
					err = FUNC15(b);
					if (!err) {
						FUNC11(p);
						FUNC13(b);
						FUNC3(p, b,
								  BTRFS_READ_LOCK);
					}
					p->locks[level] = BTRFS_READ_LOCK;
				}
				p->nodes[level] = b;
			}
		} else {
			p->slots[level] = slot;
			if (ins_len > 0 &&
			    FUNC6(root, b) < ins_len) {
				if (write_lock_level < 1) {
					write_lock_level = 1;
					FUNC9(p);
					goto again;
				}

				FUNC11(p);
				err = FUNC23(trans, root, key,
						 p, ins_len, ret == 0);
				FUNC3(p, NULL, 0);

				FUNC0(err > 0);
				if (err) {
					ret = err;
					goto done;
				}
			}
			if (!p->search_for_split)
				FUNC24(p, level, lowest_unlock,
					  min_write_lock_level, &write_lock_level);
			goto done;
		}
	}
	ret = 1;
done:
	/*
	 * we don't really know what they plan on doing with the path
	 * from here on, so for now just mark it as blocking
	 */
	if (!p->leave_spinning)
		FUNC11(p);
	if (ret < 0)
		FUNC9(p);
	return ret;
}