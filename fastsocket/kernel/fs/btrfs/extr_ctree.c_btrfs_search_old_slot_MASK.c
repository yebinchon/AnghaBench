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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int lowest_level; int* slots; int /*<<< orphan*/  leave_spinning; struct extent_buffer** nodes; void** locks; scalar_t__ search_commit_root; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 void* BTRFS_READ_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct extent_buffer*,struct btrfs_key*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*,struct extent_buffer*,void*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,void*) ; 
 int FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_path*,int) ; 
 struct extent_buffer* FUNC12 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,struct extent_buffer**,int,int,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC14 (int /*<<< orphan*/ ,struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_path*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(struct btrfs_root *root, struct btrfs_key *key,
			  struct btrfs_path *p, u64 time_seq)
{
	struct extent_buffer *b;
	int slot;
	int ret;
	int err;
	int level;
	int lowest_unlock = 1;
	u8 lowest_level = 0;

	lowest_level = p->lowest_level;
	FUNC1(p->nodes[0] != NULL);

	if (p->search_commit_root) {
		FUNC0(time_seq);
		return FUNC6(NULL, root, key, p, 0, 0);
	}

again:
	b = FUNC12(root, time_seq);
	level = FUNC4(b);
	p->locks[level] = BTRFS_READ_LOCK;

	while (b) {
		level = FUNC4(b);
		p->nodes[level] = b;
		FUNC3(p, NULL, 0);

		/*
		 * we have a lock on b and as long as we aren't changing
		 * the tree, there is no way to for the items in b to change.
		 * It is safe to drop the lock on our parent before we
		 * go through the expensive btree search on b.
		 */
		FUNC11(p, level + 1);

		ret = FUNC2(b, key, level, &slot);

		if (level != 0) {
			int dec = 0;
			if (ret && slot > 0) {
				dec = 1;
				slot -= 1;
			}
			p->slots[level] = slot;
			FUNC15(p, level, lowest_unlock, 0, NULL);

			if (level == lowest_level) {
				if (dec)
					p->slots[level]++;
				goto done;
			}

			err = FUNC13(NULL, root, p, &b, level,
						    slot, key, time_seq);
			if (err == -EAGAIN)
				goto again;
			if (err) {
				ret = err;
				goto done;
			}

			level = FUNC4(b);
			err = FUNC10(b);
			if (!err) {
				FUNC7(p);
				FUNC8(b);
				FUNC3(p, b,
							  BTRFS_READ_LOCK);
			}
			p->locks[level] = BTRFS_READ_LOCK;
			p->nodes[level] = b;
			b = FUNC14(root->fs_info, b, time_seq);
			if (b != p->nodes[level]) {
				FUNC9(p->nodes[level],
						     p->locks[level]);
				p->locks[level] = 0;
				p->nodes[level] = b;
			}
		} else {
			p->slots[level] = slot;
			FUNC15(p, level, lowest_unlock, 0, NULL);
			goto done;
		}
	}
	ret = 1;
done:
	if (!p->leave_spinning)
		FUNC7(p);
	if (ret < 0)
		FUNC5(p);

	return ret;
}