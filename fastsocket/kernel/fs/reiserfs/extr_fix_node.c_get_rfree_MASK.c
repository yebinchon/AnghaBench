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
struct tree_balance {int /*<<< orphan*/  tb_path; struct buffer_head** FR; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,int) ; 
 int FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tree_balance *tb, int h)
{
	struct buffer_head *r, *f;
	int order;

	if ((f = FUNC3(tb->tb_path, h)) == NULL ||
	    (r = tb->FR[h]) == NULL)
		return 0;

	if (f == r)
		order = FUNC2(tb->tb_path, h) + 1;
	else {
		order = 0;
		f = r;
	}

	return (FUNC1(f) - FUNC4(FUNC0(f, order)));

}