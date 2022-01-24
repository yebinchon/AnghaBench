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
struct item_head {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int DEH_SIZE ; 
 scalar_t__ DOT_OFFSET ; 
 int IH_SIZE ; 
 int M_CUT ; 
 int M_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct item_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct treepath*) ; 
 int FUNC3 (struct item_head*) ; 
 int FUNC4 (struct item_head*) ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct treepath*) ; 

__attribute__((used)) static inline int FUNC8(struct treepath *path,
					    struct item_head *le_ih,
					    struct inode *inode,
					    loff_t new_file_length,
					    int *cut_size)
{
	if (FUNC5(le_ih) == DOT_OFFSET &&
	    new_file_length == FUNC6(inode)) {
		FUNC0(FUNC3(le_ih) != 2,
		       "PAP-5220: incorrect empty directory item (%h)", le_ih);
		*cut_size = -(IH_SIZE + FUNC4(le_ih));
		return M_DELETE;	/* Delete the directory item containing "." and ".." entry. */
	}

	if (FUNC3(le_ih) == 1) {
		/* Delete the directory item such as there is one record only
		   in this item */
		*cut_size = -(IH_SIZE + FUNC4(le_ih));
		return M_DELETE;
	}

	/* Cut one record from the directory item. */
	*cut_size =
	    -(DEH_SIZE +
	      FUNC1(FUNC2(path), le_ih, FUNC7(path)));
	return M_CUT;
}