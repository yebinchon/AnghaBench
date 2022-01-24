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
struct extent_buffer {scalar_t__ len; int /*<<< orphan*/  bflags; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_4__ {scalar_t__ dirty_metadata_bytes; int /*<<< orphan*/  delalloc_lock; TYPE_1__* running_transaction; } ;
struct TYPE_3__ {scalar_t__ transid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct btrfs_trans_handle *trans, struct btrfs_root *root,
		      struct extent_buffer *buf)
{
	if (FUNC1(buf) ==
	    root->fs_info->running_transaction->transid) {
		FUNC0(buf);

		if (FUNC7(EXTENT_BUFFER_DIRTY, &buf->bflags)) {
			FUNC5(&root->fs_info->delalloc_lock);
			if (root->fs_info->dirty_metadata_bytes >= buf->len)
				root->fs_info->dirty_metadata_bytes -= buf->len;
			else {
				FUNC6(&root->fs_info->delalloc_lock);
				FUNC2(root->fs_info, -EOVERFLOW,
					  "Can't clear %lu bytes from "
					  " dirty_mdatadata_bytes (%lu)",
					  buf->len,
					  root->fs_info->dirty_metadata_bytes);
			}
			FUNC6(&root->fs_info->delalloc_lock);
		}

		/* ugh, clear_extent_buffer_dirty needs to lock the page */
		FUNC3(buf);
		FUNC4(buf);
	}
}