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
struct tree_balance {int /*<<< orphan*/ ** FL; int /*<<< orphan*/  tb_path; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct tree_balance *tb, int h)
{
	int Sh_position = FUNC1(tb->tb_path, h + 1);

	FUNC3(FUNC2(tb->tb_path, h) == NULL || tb->FL[h] == NULL,
	       "vs-12325: FL[%d](%p) or F[%d](%p) does not exist",
	       h, tb->FL[h], h, FUNC2(tb->tb_path, h));

	if (Sh_position == 0)
		return FUNC0(tb->FL[h]);
	else
		return Sh_position - 1;
}