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
struct TYPE_2__ {int col; scalar_t__ row; int /*<<< orphan*/ * width; int /*<<< orphan*/ * tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* tb ; 

__attribute__((used)) static void
FUNC3(int col)
{

	FUNC0(tb == NULL);
	FUNC0(col > 0);
	if ((tb = FUNC1(1, sizeof(*tb))) == NULL)
		FUNC2(EXIT_FAILURE, "calloc");
	if ((tb->tbl = FUNC1(col, sizeof(*tb->tbl))) == NULL)
		FUNC2(EXIT_FAILURE, "calloc");
	if ((tb->width = FUNC1(col, sizeof(*tb->width))) == NULL)
		FUNC2(EXIT_FAILURE, "calloc");
	tb->col = col;
	tb->row = 0;
}