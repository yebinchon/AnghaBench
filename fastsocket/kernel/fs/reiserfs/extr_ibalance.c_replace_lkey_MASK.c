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
struct tree_balance {int /*<<< orphan*/ ** CFL; int /*<<< orphan*/ * lkey; int /*<<< orphan*/  tb_path; int /*<<< orphan*/ ** L; } ;
struct item_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_balance*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tree_balance *tb, int h, struct item_head *key)
{
	FUNC3(tb->L[h] == NULL || tb->CFL[h] == NULL,
	       "L[h](%p) and CFL[h](%p) must exist in replace_lkey",
	       tb->L[h], tb->CFL[h]);

	if (FUNC0(FUNC2(tb->tb_path, h)) == 0)
		return;

	FUNC5(FUNC1(tb->CFL[h], tb->lkey[h]), key, KEY_SIZE);

	FUNC4(tb, tb->CFL[h], 0);
}