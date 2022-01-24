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
struct list_head {int dummy; } ;
struct cg_cgroup_link {int /*<<< orphan*/  cgrp_link_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct cg_cgroup_link* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC4(int count, struct list_head *tmp)
{
	struct cg_cgroup_link *link;
	int i;
	FUNC0(tmp);
	for (i = 0; i < count; i++) {
		link = FUNC2(sizeof(*link), GFP_KERNEL);
		if (!link) {
			FUNC1(tmp);
			return -ENOMEM;
		}
		FUNC3(&link->cgrp_link_list, tmp);
	}
	return 0;
}