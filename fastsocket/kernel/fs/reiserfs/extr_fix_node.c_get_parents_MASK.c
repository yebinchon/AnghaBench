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
struct treepath {int dummy; } ;
struct tree_balance {int* lkey; int* rkey; struct buffer_head** CFR; struct buffer_head** FR; struct buffer_head** CFL; struct buffer_head** FL; struct treepath* tb_path; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CARRY_ON ; 
 int FIRST_PATH_ELEMENT_OFFSET ; 
 int /*<<< orphan*/  LEFT_PARENTS ; 
 int FUNC2 (struct treepath*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct treepath*,int) ; 
 struct buffer_head* FUNC4 (struct treepath*,int) ; 
 int FUNC5 (struct treepath*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,struct buffer_head*,struct buffer_head*) ; 
 int /*<<< orphan*/  RIGHT_PARENTS ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int FUNC9 (struct tree_balance*,int,struct buffer_head**,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tree_balance *tb, int h)
{
	struct treepath *path = tb->tb_path;
	int position,
	    ret,
	    path_offset = FUNC2(tb->tb_path, h);
	struct buffer_head *curf, *curcf;

	/* Current node is the root of the tree or will be root of the tree */
	if (path_offset <= FIRST_PATH_ELEMENT_OFFSET) {
		/* The root can not have parents.
		   Release nodes which previously were obtained as parents of the current node neighbors. */
		FUNC7(tb->FL[h]);
		FUNC7(tb->CFL[h]);
		FUNC7(tb->FR[h]);
		FUNC7(tb->CFR[h]);
		tb->FL[h]  = NULL;
		tb->CFL[h] = NULL;
		tb->FR[h]  = NULL;
		tb->CFR[h] = NULL;
		return CARRY_ON;
	}

	/* Get parent FL[path_offset] of L[path_offset]. */
	position = FUNC5(path, path_offset - 1);
	if (position) {
		/* Current node is not the first child of its parent. */
		curf = FUNC4(path, path_offset - 1);
		curcf = FUNC4(path, path_offset - 1);
		FUNC8(curf);
		FUNC8(curf);
		tb->lkey[h] = position - 1;
	} else {
		/* Calculate current parent of L[path_offset], which is the left neighbor of the current node.
		   Calculate current common parent of L[path_offset] and the current node. Note that
		   CFL[path_offset] not equal FL[path_offset] and CFL[path_offset] not equal F[path_offset].
		   Calculate lkey[path_offset]. */
		if ((ret = FUNC9(tb, h + 1, &curf,
						  &curcf,
						  LEFT_PARENTS)) != CARRY_ON)
			return ret;
	}

	FUNC7(tb->FL[h]);
	tb->FL[h] = curf;	/* New initialization of FL[h]. */
	FUNC7(tb->CFL[h]);
	tb->CFL[h] = curcf;	/* New initialization of CFL[h]. */

	FUNC6((curf && !FUNC0(curf)) ||
	       (curcf && !FUNC0(curcf)),
	       "PAP-8195: FL (%b) or CFL (%b) is invalid", curf, curcf);

/* Get parent FR[h] of R[h]. */

/* Current node is the last child of F[h]. FR[h] != F[h]. */
	if (position == FUNC1(FUNC3(path, h + 1))) {
/* Calculate current parent of R[h], which is the right neighbor of F[h].
   Calculate current common parent of R[h] and current node. Note that CFR[h]
   not equal FR[path_offset] and CFR[h] not equal F[h]. */
		if ((ret =
		     FUNC9(tb, h + 1, &curf, &curcf,
				    RIGHT_PARENTS)) != CARRY_ON)
			return ret;
	} else {
/* Current node is not the last child of its parent F[h]. */
		curf = FUNC4(path, path_offset - 1);
		curcf = FUNC4(path, path_offset - 1);
		FUNC8(curf);
		FUNC8(curf);
		tb->rkey[h] = position;
	}

	FUNC7(tb->FR[h]);
	/* New initialization of FR[path_offset]. */
	tb->FR[h] = curf;

	FUNC7(tb->CFR[h]);
	/* New initialization of CFR[path_offset]. */
	tb->CFR[h] = curcf;

	FUNC6((curf && !FUNC0(curf)) ||
	       (curcf && !FUNC0(curcf)),
	       "PAP-8205: FR (%b) or CFR (%b) is invalid", curf, curcf);

	return CARRY_ON;
}