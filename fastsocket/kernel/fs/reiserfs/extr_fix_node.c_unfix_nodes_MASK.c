#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree_balance {int /*<<< orphan*/  vn_buf; TYPE_1__** used; int /*<<< orphan*/  transaction_handle; TYPE_1__** FEB; TYPE_1__** CFR; TYPE_1__** CFL; TYPE_1__** FR; TYPE_1__** FL; TYPE_1__** R; TYPE_1__** L; int /*<<< orphan*/  tb_sb; int /*<<< orphan*/  tb_path; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;
struct TYPE_3__ {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int MAX_FEB_SIZE ; 
 int MAX_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC5(struct tree_balance *tb)
{
	int i;

	/* Release path buffers. */
	FUNC2(tb->tb_sb, tb->tb_path);

	/* brelse all resources collected for balancing */
	for (i = 0; i < MAX_HEIGHT; i++) {
		FUNC4(tb->tb_sb, tb->L[i]);
		FUNC4(tb->tb_sb, tb->R[i]);
		FUNC4(tb->tb_sb, tb->FL[i]);
		FUNC4(tb->tb_sb, tb->FR[i]);
		FUNC4(tb->tb_sb, tb->CFL[i]);
		FUNC4(tb->tb_sb, tb->CFR[i]);

		FUNC0(tb->L[i]);
		FUNC0(tb->R[i]);
		FUNC0(tb->FL[i]);
		FUNC0(tb->FR[i]);
		FUNC0(tb->CFL[i]);
		FUNC0(tb->CFR[i]);
	}

	/* deal with list of allocated (used and unused) nodes */
	for (i = 0; i < MAX_FEB_SIZE; i++) {
		if (tb->FEB[i]) {
			b_blocknr_t blocknr = tb->FEB[i]->b_blocknr;
			/* de-allocated block which was not used by balancing and
			   bforget about buffer for it */
			FUNC0(tb->FEB[i]);
			FUNC3(tb->transaction_handle, NULL,
					    blocknr, 0);
		}
		if (tb->used[i]) {
			/* release used as new nodes including a new root */
			FUNC0(tb->used[i]);
		}
	}

	FUNC1(tb->vn_buf);

}