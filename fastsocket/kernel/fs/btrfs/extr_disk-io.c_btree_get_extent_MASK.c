#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {void* len; void* start; int /*<<< orphan*/  bdev; scalar_t__ block_start; void* block_len; } ;
struct TYPE_8__ {TYPE_3__* root; struct extent_map_tree extent_tree; } ;
struct TYPE_7__ {TYPE_2__* fs_info; } ;
struct TYPE_6__ {TYPE_1__* fs_devices; } ;
struct TYPE_5__ {int /*<<< orphan*/  latest_bdev; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int EEXIST ; 
 int EIO ; 
 int ENOMEM ; 
 struct extent_map* FUNC1 (int) ; 
 int FUNC2 (struct extent_map_tree*,struct extent_map*) ; 
 struct extent_map* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct extent_map*) ; 
 struct extent_map* FUNC5 (struct extent_map_tree*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_map *FUNC10(struct inode *inode,
		struct page *page, size_t pg_offset, u64 start, u64 len,
		int create)
{
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	struct extent_map *em;
	int ret;

	FUNC6(&em_tree->lock);
	em = FUNC5(em_tree, start, len);
	if (em) {
		em->bdev =
			FUNC0(inode)->root->fs_info->fs_devices->latest_bdev;
		FUNC7(&em_tree->lock);
		goto out;
	}
	FUNC7(&em_tree->lock);

	em = FUNC3();
	if (!em) {
		em = FUNC1(-ENOMEM);
		goto out;
	}
	em->start = 0;
	em->len = (u64)-1;
	em->block_len = (u64)-1;
	em->block_start = 0;
	em->bdev = FUNC0(inode)->root->fs_info->fs_devices->latest_bdev;

	FUNC8(&em_tree->lock);
	ret = FUNC2(em_tree, em);
	if (ret == -EEXIST) {
		u64 failed_start = em->start;
		u64 failed_len = em->len;

		FUNC4(em);
		em = FUNC5(em_tree, start, len);
		if (em) {
			ret = 0;
		} else {
			em = FUNC5(em_tree, failed_start,
						   failed_len);
			ret = -EIO;
		}
	} else if (ret) {
		FUNC4(em);
		em = NULL;
	}
	FUNC9(&em_tree->lock);

	if (ret)
		em = FUNC1(ret);
out:
	return em;
}