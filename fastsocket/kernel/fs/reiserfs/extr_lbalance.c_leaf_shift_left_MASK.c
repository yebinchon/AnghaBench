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
struct tree_balance {scalar_t__ tb_mode; int /*<<< orphan*/ * lkey; int /*<<< orphan*/ * CFL; int /*<<< orphan*/  tb_path; int /*<<< orphan*/  tb_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEAF_FROM_S_TO_L ; 
 scalar_t__ M_INSERT ; 
 scalar_t__ M_PASTE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct tree_balance*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct tree_balance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

int FUNC14(struct tree_balance *tb, int shift_num, int shift_bytes)
{
	struct buffer_head *S0 = FUNC6(tb->tb_path);
	int i;

	/* move shift_num (and shift_bytes bytes) items from S[0] to left neighbor L[0] */
	i = FUNC9(LEAF_FROM_S_TO_L, tb, shift_num, shift_bytes, NULL);

	if (shift_num) {
		if (FUNC0(S0) == 0) {	/* number of items in S[0] == 0 */

			FUNC7(shift_bytes != -1,
			       "vs-10270: S0 is empty now, but shift_bytes != -1 (%d)",
			       shift_bytes);
#ifdef CONFIG_REISERFS_CHECK
			if (tb->tb_mode == M_PASTE || tb->tb_mode == M_INSERT) {
				print_cur_tb("vs-10275");
				reiserfs_panic(tb->tb_sb, "vs-10275",
					       "balance condition corrupted "
					       "(%c)", tb->tb_mode);
			}
#endif

			if (FUNC4(tb->tb_path, 1) == 0)
				FUNC13(tb, tb->CFL[0], tb->lkey[0],
					    FUNC5(tb->tb_path, 0), 0);

		} else {
			/* replace lkey in CFL[0] by 0-th key from S[0]; */
			FUNC13(tb, tb->CFL[0], tb->lkey[0], S0, 0);

			FUNC7((shift_bytes != -1 &&
				!(FUNC8(FUNC1(S0, 0))
				  && !FUNC3(FUNC1(S0, 0)))) &&
			       (!FUNC10
				(FUNC2(S0, 0), S0->b_size)),
			       "vs-10280: item must be mergeable");
		}
	}

	return i;
}