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
struct tree_balance {int /*<<< orphan*/  tb_path; } ;
struct buffer_info {int /*<<< orphan*/  bi_position; int /*<<< orphan*/  bi_parent; int /*<<< orphan*/  bi_bh; struct tree_balance* tb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct tree_balance *tb,
                                         struct buffer_info *bi)
{
	bi->tb          = tb;
	bi->bi_bh        = FUNC2(tb->tb_path);
	bi->bi_parent   = FUNC1(tb->tb_path, 0);
	bi->bi_position = FUNC0(tb->tb_path, 1);
}