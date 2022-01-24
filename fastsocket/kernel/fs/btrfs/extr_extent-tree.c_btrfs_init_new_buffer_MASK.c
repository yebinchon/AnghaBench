#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {scalar_t__ len; scalar_t__ start; int /*<<< orphan*/  bflags; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  blocks_used; TYPE_2__* transaction; int /*<<< orphan*/  transid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {int log_transid; int /*<<< orphan*/  dirty_log_pages; TYPE_1__ root_key; } ;
struct TYPE_4__ {int /*<<< orphan*/  dirty_pages; } ;

/* Variables and functions */
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct extent_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_STALE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

struct extent_buffer *FUNC11(struct btrfs_trans_handle *trans,
					    struct btrfs_root *root,
					    u64 bytenr, u32 blocksize,
					    int level)
{
	struct extent_buffer *buf;

	buf = FUNC1(root, bytenr, blocksize);
	if (!buf)
		return FUNC0(-ENOMEM);
	FUNC4(buf, trans->transid);
	FUNC2(root->root_key.objectid, buf, level);
	FUNC6(buf);
	FUNC7(trans, root, buf);
	FUNC8(EXTENT_BUFFER_STALE, &buf->bflags);

	FUNC5(buf);
	FUNC3(buf);

	if (root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID) {
		/*
		 * we allow two log transactions at a time, use different
		 * EXENT bit to differentiate dirty pages.
		 */
		if (root->log_transid % 2 == 0)
			FUNC9(&root->dirty_log_pages, buf->start,
					buf->start + buf->len - 1, GFP_NOFS);
		else
			FUNC10(&root->dirty_log_pages, buf->start,
					buf->start + buf->len - 1, GFP_NOFS);
	} else {
		FUNC9(&trans->transaction->dirty_pages, buf->start,
			 buf->start + buf->len - 1, GFP_NOFS);
	}
	trans->blocks_used++;
	/* this returns a buffer locked for blocking */
	return buf;
}