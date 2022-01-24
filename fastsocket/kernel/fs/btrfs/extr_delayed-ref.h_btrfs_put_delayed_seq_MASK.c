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
struct seq_list {int /*<<< orphan*/  list; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; int /*<<< orphan*/  seq_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct btrfs_delayed_ref_root *delayed_refs,
		      struct seq_list *elem)
{
	FUNC1(&delayed_refs->lock);
	FUNC0(&elem->list);
	FUNC3(&delayed_refs->seq_wait);
	FUNC2(&delayed_refs->lock);
}