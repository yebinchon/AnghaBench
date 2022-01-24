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
struct seq_list {int /*<<< orphan*/  list; int /*<<< orphan*/  seq; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  seq_head; int /*<<< orphan*/  seq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct btrfs_delayed_ref_root *delayed_refs,
		      struct seq_list *elem)
{
	FUNC0(&delayed_refs->lock);
	elem->seq = delayed_refs->seq;
	FUNC1(&elem->list, &delayed_refs->seq_head);
}