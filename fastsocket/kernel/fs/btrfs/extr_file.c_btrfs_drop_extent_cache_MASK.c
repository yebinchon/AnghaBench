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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {unsigned long flags; scalar_t__ start; scalar_t__ len; scalar_t__ block_start; scalar_t__ orig_start; scalar_t__ block_len; int /*<<< orphan*/  compress_type; int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 int /*<<< orphan*/  EXTENT_FLAG_PINNED ; 
 scalar_t__ EXTENT_MAP_LAST_BYTE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct extent_map_tree*,struct extent_map*) ; 
 struct extent_map* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_map*) ; 
 struct extent_map* FUNC7 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_map_tree*,struct extent_map*) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *inode, u64 start, u64 end,
			    int skip_pinned)
{
	struct extent_map *em;
	struct extent_map *split = NULL;
	struct extent_map *split2 = NULL;
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	u64 len = end - start + 1;
	int ret;
	int testend = 1;
	unsigned long flags;
	int compressed = 0;

	FUNC2(end < start);
	if (end == (u64)-1) {
		len = (u64)-1;
		testend = 0;
	}
	while (1) {
		if (!split)
			split = FUNC4();
		if (!split2)
			split2 = FUNC4();
		FUNC1(!split || !split2); /* -ENOMEM */

		FUNC10(&em_tree->lock);
		em = FUNC7(em_tree, start, len);
		if (!em) {
			FUNC11(&em_tree->lock);
			break;
		}
		flags = em->flags;
		if (skip_pinned && FUNC9(EXTENT_FLAG_PINNED, &em->flags)) {
			if (testend && em->start + em->len >= start + len) {
				FUNC6(em);
				FUNC11(&em_tree->lock);
				break;
			}
			start = em->start + em->len;
			if (testend)
				len = start + len - (em->start + em->len);
			FUNC6(em);
			FUNC11(&em_tree->lock);
			continue;
		}
		compressed = FUNC9(EXTENT_FLAG_COMPRESSED, &em->flags);
		FUNC5(EXTENT_FLAG_PINNED, &em->flags);
		FUNC8(em_tree, em);

		if (em->block_start < EXTENT_MAP_LAST_BYTE &&
		    em->start < start) {
			split->start = em->start;
			split->len = start - em->start;
			split->orig_start = em->orig_start;
			split->block_start = em->block_start;

			if (compressed)
				split->block_len = em->block_len;
			else
				split->block_len = split->len;

			split->bdev = em->bdev;
			split->flags = flags;
			split->compress_type = em->compress_type;
			ret = FUNC3(em_tree, split);
			FUNC1(ret); /* Logic error */
			FUNC6(split);
			split = split2;
			split2 = NULL;
		}
		if (em->block_start < EXTENT_MAP_LAST_BYTE &&
		    testend && em->start + em->len > start + len) {
			u64 diff = start + len - em->start;

			split->start = start + len;
			split->len = em->start + em->len - (start + len);
			split->bdev = em->bdev;
			split->flags = flags;
			split->compress_type = em->compress_type;

			if (compressed) {
				split->block_len = em->block_len;
				split->block_start = em->block_start;
				split->orig_start = em->orig_start;
			} else {
				split->block_len = split->len;
				split->block_start = em->block_start + diff;
				split->orig_start = split->start;
			}

			ret = FUNC3(em_tree, split);
			FUNC1(ret); /* Logic error */
			FUNC6(split);
			split = NULL;
		}
		FUNC11(&em_tree->lock);

		/* once for us */
		FUNC6(em);
		/* once for the tree*/
		FUNC6(em);
	}
	if (split)
		FUNC6(split);
	if (split2)
		FUNC6(split2);
	return 0;
}