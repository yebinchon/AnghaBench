#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int col; int row; int /*<<< orphan*/ *** tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,int) ; 
 TYPE_1__* tb ; 

__attribute__((used)) static void
FUNC3(void)
{
	int i;

	FUNC0(tb != NULL && tb->col > 0);
	tb->row++;
	for (i = 0; i < tb->col; i++) {
		tb->tbl[i] = FUNC2(tb->tbl[i], sizeof(*tb->tbl[i]) * tb->row);
		if (tb->tbl[i] == NULL)
			FUNC1(EXIT_FAILURE, "realloc");
		tb->tbl[i][tb->row - 1] = NULL;
	}
}