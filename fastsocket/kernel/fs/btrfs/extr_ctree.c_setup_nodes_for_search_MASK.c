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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; scalar_t__ search_for_split; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAGAIN ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_path*,int) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ; 

__attribute__((used)) static int
FUNC9(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct btrfs_path *p,
		       struct extent_buffer *b, int level, int ins_len,
		       int *write_lock_level)
{
	int ret;
	if ((p->search_for_split || ins_len > 0) && FUNC4(b) >=
	    FUNC0(root) - 3) {
		int sret;

		if (*write_lock_level < level + 1) {
			*write_lock_level = level + 1;
			FUNC5(p);
			goto again;
		}

		sret = FUNC7(root, p, level);
		if (sret)
			goto again;

		FUNC6(p);
		sret = FUNC8(trans, root, p, level);
		FUNC3(p, NULL, 0);

		FUNC1(sret > 0);
		if (sret) {
			ret = sret;
			goto done;
		}
		b = p->nodes[level];
	} else if (ins_len < 0 && FUNC4(b) <
		   FUNC0(root) / 2) {
		int sret;

		if (*write_lock_level < level + 1) {
			*write_lock_level = level + 1;
			FUNC5(p);
			goto again;
		}

		sret = FUNC7(root, p, level);
		if (sret)
			goto again;

		FUNC6(p);
		sret = FUNC2(trans, root, p, level);
		FUNC3(p, NULL, 0);

		if (sret) {
			ret = sret;
			goto done;
		}
		b = p->nodes[level];
		if (!b) {
			FUNC5(p);
			goto again;
		}
		FUNC1(FUNC4(b) == 1);
	}
	return 0;

again:
	ret = -EAGAIN;
done:
	return ret;
}