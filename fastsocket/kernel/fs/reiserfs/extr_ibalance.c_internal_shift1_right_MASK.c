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
struct tree_balance {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNAL_SHIFT_FROM_S_TO_R ; 
 int /*<<< orphan*/  LAST_TO_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tree_balance*,int,struct buffer_info*,struct buffer_info*,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_info*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_info*,struct buffer_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct tree_balance *tb,
				  int h, int pointer_amount)
{
	struct buffer_info dest_bi, src_bi;
	struct buffer_head *cf;
	int d_key_position;

	FUNC0(INTERNAL_SHIFT_FROM_S_TO_R, tb, h,
				       &dest_bi, &src_bi, &d_key_position, &cf);

	if (pointer_amount > 0)	/* insert rkey from CFR[h] to right neighbor R[h] */
		FUNC1(&dest_bi, 0, cf, d_key_position);
	/*            internal_insert_key (tb->R[h], 0, tb->CFR[h], tb->rkey[h]); */

	/* last parameter is del_parameter */
	FUNC2(&dest_bi, &src_bi, LAST_TO_FIRST,
				     pointer_amount, 1);
	/*    internal_move_pointers_items (tb->R[h], tb->S[h], LAST_TO_FIRST, pointer_amount, 1); */
}