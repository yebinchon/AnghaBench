#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct treepath {int dummy; } ;
struct tree_balance {int* lkey; int* rkey; int /*<<< orphan*/  tb_sb; struct treepath* tb_path; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {int path_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int) ; 
 int CARRY_ON ; 
 int DISK_LEAF_NODE_LEVEL ; 
 scalar_t__ FUNC5 (struct tree_balance*) ; 
 int FIRST_PATH_ELEMENT_OFFSET ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int INT_MAX ; 
 scalar_t__ IO_ERROR ; 
 char LEFT_PARENTS ; 
 int FUNC7 (struct treepath*,int) ; 
 struct buffer_head* FUNC8 (struct treepath*,int) ; 
 int FUNC9 (struct treepath*,int) ; 
 struct buffer_head* FUNC10 (TYPE_1__*) ; 
 int REPEAT_SEARCH ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 char RIGHT_PARENTS ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct cpu_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_1__ s_path_to_neighbor_father ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,struct cpu_key*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC21(struct tree_balance *tb,
			  int h,
			  struct buffer_head **pfather,
			  struct buffer_head **pcom_father, char c_lr_par)
{
	struct buffer_head *parent;
	FUNC6(s_path_to_neighbor_father);
	struct treepath *path = tb->tb_path;
	struct cpu_key s_lr_father_key;
	int counter,
	    position = INT_MAX,
	    first_last_position = 0,
	    path_offset = FUNC7(path, h);

	/* Starting from F[h] go upwards in the tree, and look for the common
	   ancestor of F[h], and its neighbor l/r, that should be obtained. */

	counter = path_offset;

	FUNC11(counter < FIRST_PATH_ELEMENT_OFFSET,
	       "PAP-8180: invalid path length");

	for (; counter > FIRST_PATH_ELEMENT_OFFSET; counter--) {
		/* Check whether parent of the current buffer in the path is really parent in the tree. */
		if (!FUNC0
		    (parent = FUNC8(path, counter - 1)))
			return REPEAT_SEARCH;
		/* Check whether position in the parent is correct. */
		if ((position =
		     FUNC9(path,
					  counter - 1)) >
		    FUNC2(parent))
			return REPEAT_SEARCH;
		/* Check whether parent at the path really points to the child. */
		if (FUNC3(parent, position) !=
		    FUNC8(path, counter)->b_blocknr)
			return REPEAT_SEARCH;
		/* Return delimiting key if position in the parent is not equal to first/last one. */
		if (c_lr_par == RIGHT_PARENTS)
			first_last_position = FUNC2(parent);
		if (position != first_last_position) {
			*pcom_father = parent;
			FUNC17(*pcom_father);
			/*(*pcom_father = parent)->b_count++; */
			break;
		}
	}

	/* if we are in the root of the tree, then there is no common father */
	if (counter == FIRST_PATH_ELEMENT_OFFSET) {
		/* Check whether first buffer in the path is the root of the tree. */
		if (FUNC8
		    (tb->tb_path,
		     FIRST_PATH_ELEMENT_OFFSET)->b_blocknr ==
		    FUNC12(tb->tb_sb)) {
			*pfather = *pcom_father = NULL;
			return CARRY_ON;
		}
		return REPEAT_SEARCH;
	}

	FUNC11(FUNC1(*pcom_father) <= DISK_LEAF_NODE_LEVEL,
	       "PAP-8185: (%b %z) level too small",
	       *pcom_father, *pcom_father);

	/* Check whether the common parent is locked. */

	if (FUNC15(*pcom_father)) {
		FUNC13(*pcom_father);
		if (FUNC5(tb)) {
			FUNC14(*pcom_father);
			return REPEAT_SEARCH;
		}
	}

	/* So, we got common parent of the current node and its left/right neighbor.
	   Now we are geting the parent of the left/right neighbor. */

	/* Form key to get parent of the left/right neighbor. */
	FUNC18(&s_lr_father_key,
		       FUNC4(*pcom_father,
				      (c_lr_par ==
				       LEFT_PARENTS) ? (tb->lkey[h - 1] =
							position -
							1) : (tb->rkey[h -
									   1] =
							      position)));

	if (c_lr_par == LEFT_PARENTS)
		FUNC16(&s_lr_father_key);

	if (FUNC20
	    (tb->tb_sb, &s_lr_father_key, &s_path_to_neighbor_father,
	     h + 1) == IO_ERROR)
		// path is released
		return IO_ERROR;

	if (FUNC5(tb)) {
		FUNC19(&s_path_to_neighbor_father);
		FUNC14(*pcom_father);
		return REPEAT_SEARCH;
	}

	*pfather = FUNC10(&s_path_to_neighbor_father);

	FUNC11(FUNC1(*pfather) != h + 1,
	       "PAP-8190: (%b %z) level too small", *pfather, *pfather);
	FUNC11(s_path_to_neighbor_father.path_length <
	       FIRST_PATH_ELEMENT_OFFSET, "PAP-8192: path length is too small");

	s_path_to_neighbor_father.path_length--;
	FUNC19(&s_path_to_neighbor_father);
	return CARRY_ON;
}