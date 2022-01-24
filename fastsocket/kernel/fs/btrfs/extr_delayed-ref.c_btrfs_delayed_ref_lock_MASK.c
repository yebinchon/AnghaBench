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
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_tree; int /*<<< orphan*/  refs; } ;
struct btrfs_delayed_ref_head {TYPE_2__ node; int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {struct btrfs_delayed_ref_root delayed_refs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct btrfs_trans_handle *trans,
			   struct btrfs_delayed_ref_head *head)
{
	struct btrfs_delayed_ref_root *delayed_refs;

	delayed_refs = &trans->transaction->delayed_refs;
	FUNC0(&delayed_refs->lock);
	if (FUNC4(&head->mutex))
		return 0;

	FUNC1(&head->node.refs);
	FUNC7(&delayed_refs->lock);

	FUNC3(&head->mutex);
	FUNC6(&delayed_refs->lock);
	if (!head->node.in_tree) {
		FUNC5(&head->mutex);
		FUNC2(&head->node);
		return -EAGAIN;
	}
	FUNC2(&head->node);
	return 0;
}