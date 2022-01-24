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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootmenu ; 
 scalar_t__ tree ; 
 scalar_t__ tree1 ; 
 int /*<<< orphan*/  tree1_w ; 
 scalar_t__ tree2 ; 

__attribute__((used)) static void FUNC4(void)
{
	if (tree1)
		FUNC2(tree1);

	tree = tree1;
	FUNC1(&rootmenu);
	FUNC3(FUNC0(tree1_w));
	tree = tree2;
}