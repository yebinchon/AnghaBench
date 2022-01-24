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
struct gcov_node {struct gcov_info* info; int /*<<< orphan*/ * ghost; } ;
struct gcov_info {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcov_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gcov_node *node, struct gcov_info *info)
{
	if (FUNC2(node->ghost, info))
		FUNC0(info, node->ghost);
	else {
		FUNC3("discarding saved data for '%s' (version changed)\n",
			   info->filename);
	}
	FUNC1(node->ghost);
	node->ghost = NULL;
	node->info = info;
}