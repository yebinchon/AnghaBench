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
struct btrfs_delayed_ref_node {int in_tree; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_delayed_ref_node*) ; 

__attribute__((used)) static inline void FUNC4(struct btrfs_delayed_ref_node *ref)
{
	FUNC0(FUNC2(&ref->refs) == 0);
	if (FUNC1(&ref->refs)) {
		FUNC0(ref->in_tree);
		FUNC3(ref);
	}
}