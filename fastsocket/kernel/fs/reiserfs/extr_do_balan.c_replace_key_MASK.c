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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct tree_balance*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct tree_balance *tb, struct buffer_head *dest, int n_dest,
		 struct buffer_head *src, int n_src)
{

	FUNC5(dest == NULL || src == NULL,
	       "vs-12305: source or destination buffer is 0 (src=%p, dest=%p)",
	       src, dest);
	FUNC5(!FUNC1(dest),
	       "vs-12310: invalid level (%z) for destination buffer. dest must be leaf",
	       dest);
	FUNC5(n_dest < 0 || n_src < 0,
	       "vs-12315: src(%d) or dest(%d) key number < 0", n_src, n_dest);
	FUNC5(n_dest >= FUNC2(dest) || n_src >= FUNC2(src),
	       "vs-12320: src(%d(%d)) or dest(%d(%d)) key number is too big",
	       n_src, FUNC2(src), n_dest, FUNC2(dest));

	if (FUNC0(src))
		/* source buffer contains leaf node */
		FUNC7(FUNC3(dest, n_dest), FUNC4(src, n_src),
		       KEY_SIZE);
	else
		FUNC7(FUNC3(dest, n_dest), FUNC3(src, n_src),
		       KEY_SIZE);

	FUNC6(tb, dest, 0);
}