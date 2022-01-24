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
struct tree_balance {int /*<<< orphan*/  tb_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_do_balance; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*) ; 
 int /*<<< orphan*/ * cur_tb ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*) ; 

__attribute__((used)) static inline void FUNC5(struct tree_balance *tb)
{

#ifdef CONFIG_REISERFS_CHECK
	check_leaf_level(tb);
	check_internal_levels(tb);
	cur_tb = NULL;
#endif

	/* reiserfs_free_block is no longer schedule safe.  So, we need to
	 ** put the buffers we want freed on the thrown list during do_balance,
	 ** and then free them now
	 */

	FUNC0(tb->tb_sb)->s_do_balance++;

	/* release all nodes hold to perform the balancing */
	FUNC4(tb);

	FUNC3(tb);
}