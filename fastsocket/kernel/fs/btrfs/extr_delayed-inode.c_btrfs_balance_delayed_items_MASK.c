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
struct btrfs_root {int dummy; } ;
struct btrfs_delayed_root {int /*<<< orphan*/  items; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DELAYED_BACKGROUND ; 
 scalar_t__ BTRFS_DELAYED_WRITEBACK ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct btrfs_delayed_root* FUNC1 (struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_delayed_root*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct btrfs_root *root)
{
	struct btrfs_delayed_root *delayed_root;

	delayed_root = FUNC1(root);

	if (FUNC0(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND)
		return;

	if (FUNC0(&delayed_root->items) >= BTRFS_DELAYED_WRITEBACK) {
		int ret;
		ret = FUNC2(delayed_root, root, 1);
		if (ret)
			return;

		FUNC3(
				delayed_root->wait,
				(FUNC0(&delayed_root->items) <
				 BTRFS_DELAYED_BACKGROUND),
				HZ);
		return;
	}

	FUNC2(delayed_root, root, 0);
}