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
struct nlm_block {int /*<<< orphan*/  b_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_blocked_lock ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct nlm_block *block)
{
	if (!FUNC1(&block->b_list)) {
		FUNC3(&nlm_blocked_lock);
		FUNC0(&block->b_list);
		FUNC4(&nlm_blocked_lock);
		FUNC2(block);
	}
}