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
struct treepath {int path_length; } ;
struct super_block {int dummy; } ;
struct reiserfs_key {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*,int) ; 
 struct reiserfs_key const* FUNC3 (struct buffer_head*,int) ; 
 int FIRST_PATH_ELEMENT_OFFSET ; 
 struct reiserfs_key const MAX_KEY ; 
 struct reiserfs_key const MIN_KEY ; 
 struct buffer_head* FUNC4 (struct treepath const*,int) ; 
 int FUNC5 (struct treepath const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (struct super_block const*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static inline const struct reiserfs_key *FUNC9(const struct treepath *chk_path,
						  const struct super_block *sb)
{
	int position, path_offset = chk_path->path_length;
	struct buffer_head *parent;

	FUNC6(path_offset < FIRST_PATH_ELEMENT_OFFSET,
	       "PAP-5010: invalid offset in the path");

	/* While not higher in path than first element. */
	while (path_offset-- > FIRST_PATH_ELEMENT_OFFSET) {

		FUNC6(!FUNC8
		       (FUNC4(chk_path, path_offset)),
		       "PAP-5020: parent is not uptodate");

		/* Parent at the path is not in the tree now. */
		if (!FUNC0
		    (parent =
		     FUNC4(chk_path, path_offset)))
			return &MAX_KEY;
		/* Check whether position in the parent is correct. */
		if ((position =
		     FUNC5(chk_path,
					  path_offset)) >
		    FUNC1(parent))
			return &MAX_KEY;
		/* Check whether parent at the path really points to the child. */
		if (FUNC2(parent, position) !=
		    FUNC4(chk_path,
					path_offset + 1)->b_blocknr)
			return &MAX_KEY;
		/* Return delimiting key if position in the parent is not equal to zero. */
		if (position)
			return FUNC3(parent, position - 1);
	}
	/* Return MIN_KEY if we are in the root of the buffer tree. */
	if (FUNC4(chk_path, FIRST_PATH_ELEMENT_OFFSET)->
	    b_blocknr == FUNC7(sb))
		return &MIN_KEY;
	return &MAX_KEY;
}