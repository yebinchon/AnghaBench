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
struct btrfs_root {struct extent_buffer* node; } ;

/* Variables and functions */
 struct extent_buffer* FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 

struct extent_buffer *FUNC4(struct btrfs_root *root)
{
	struct extent_buffer *eb;

	while (1) {
		eb = FUNC0(root);
		FUNC1(eb);
		if (eb == root->node)
			break;
		FUNC2(eb);
		FUNC3(eb);
	}
	return eb;
}