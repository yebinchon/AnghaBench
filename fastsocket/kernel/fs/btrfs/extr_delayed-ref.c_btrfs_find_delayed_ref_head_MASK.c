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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  root; } ;
struct btrfs_delayed_ref_node {int dummy; } ;
struct btrfs_delayed_ref_head {int dummy; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;

/* Variables and functions */
 struct btrfs_delayed_ref_head* FUNC0 (struct btrfs_delayed_ref_node*) ; 
 struct btrfs_delayed_ref_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct btrfs_delayed_ref_head *
FUNC2(struct btrfs_trans_handle *trans, u64 bytenr)
{
	struct btrfs_delayed_ref_node *ref;
	struct btrfs_delayed_ref_root *delayed_refs;

	delayed_refs = &trans->transaction->delayed_refs;
	ref = FUNC1(&delayed_refs->root, bytenr, NULL, 0);
	if (ref)
		return FUNC0(ref);
	return NULL;
}