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
struct TYPE_3__ {int rb_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_head; TYPE_1__ root; } ;
struct btrfs_transaction {TYPE_2__ delayed_refs; int /*<<< orphan*/  list; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_transaction_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_transaction*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct btrfs_transaction *transaction)
{
	FUNC1(FUNC3(&transaction->use_count) == 0);
	if (FUNC2(&transaction->use_count)) {
		FUNC0(!FUNC5(&transaction->list));
		FUNC1(transaction->delayed_refs.root.rb_node);
		FUNC1(!FUNC5(&transaction->delayed_refs.seq_head));
		FUNC6(transaction, 0, sizeof(*transaction));
		FUNC4(btrfs_transaction_cachep, transaction);
	}
}