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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_key_ptr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct extent_buffer*,struct extent_buffer*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct extent_buffer*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC12(struct btrfs_trans_handle *trans,
			  struct btrfs_root *root, struct extent_buffer *dst,
			  struct extent_buffer *src, int empty)
{
	int push_items = 0;
	int src_nritems;
	int dst_nritems;
	int ret = 0;

	src_nritems = FUNC3(src);
	dst_nritems = FUNC3(dst);
	push_items = FUNC0(root) - dst_nritems;
	FUNC1(FUNC2(src) != trans->transid);
	FUNC1(FUNC2(dst) != trans->transid);

	if (!empty && src_nritems <= 8)
		return 1;

	if (push_items <= 0)
		return 1;

	if (empty) {
		push_items = FUNC9(src_nritems, push_items);
		if (push_items < src_nritems) {
			/* leave at least 8 pointers in the node if
			 * we aren't going to empty it
			 */
			if (src_nritems - push_items < 8) {
				if (push_items <= 8)
					return 1;
				push_items -= 8;
			}
		}
	} else
		push_items = FUNC9(src_nritems - 8, push_items);

	FUNC10(root->fs_info, dst, src, dst_nritems, 0,
			     push_items);
	FUNC7(dst, src,
			   FUNC5(dst_nritems),
			   FUNC5(0),
			   push_items * sizeof(struct btrfs_key_ptr));

	if (push_items < src_nritems) {
		FUNC11(root->fs_info, src, 0, push_items,
				     src_nritems - push_items);
		FUNC8(src, FUNC5(0),
				      FUNC5(push_items),
				      (src_nritems - push_items) *
				      sizeof(struct btrfs_key_ptr));
	}
	FUNC6(src, src_nritems - push_items);
	FUNC6(dst, dst_nritems + push_items);
	FUNC4(src);
	FUNC4(dst);

	return ret;
}