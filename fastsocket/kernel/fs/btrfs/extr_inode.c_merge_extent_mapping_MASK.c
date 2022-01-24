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
typedef  scalar_t__ u64 ;
struct extent_map_tree {int dummy; } ;
struct extent_map {scalar_t__ start; scalar_t__ block_start; int /*<<< orphan*/  block_len; int /*<<< orphan*/  flags; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 scalar_t__ EXTENT_MAP_LAST_BYTE ; 
 int FUNC1 (struct extent_map_tree*,struct extent_map*) ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct extent_map_tree *em_tree,
				struct extent_map *existing,
				struct extent_map *em,
				u64 map_start, u64 map_len)
{
	u64 start_diff;

	FUNC0(map_start < em->start || map_start >= FUNC2(em));
	start_diff = map_start - em->start;
	em->start = map_start;
	em->len = map_len;
	if (em->block_start < EXTENT_MAP_LAST_BYTE &&
	    !FUNC3(EXTENT_FLAG_COMPRESSED, &em->flags)) {
		em->block_start += start_diff;
		em->block_len -= start_diff;
	}
	return FUNC1(em_tree, em);
}