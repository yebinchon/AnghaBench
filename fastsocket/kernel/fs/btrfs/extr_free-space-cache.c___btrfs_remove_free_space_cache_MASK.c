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
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_free_space_ctl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct btrfs_free_space_ctl *ctl)
{
	FUNC1(&ctl->tree_lock);
	FUNC0(ctl);
	FUNC2(&ctl->tree_lock);
}