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
struct css_set {int dummy; } ;
struct cgroup {int dummy; } ;
struct cg_list_entry {int /*<<< orphan*/  links; struct css_set* cg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct css_set* FUNC0 (struct css_set*,struct cgroup*) ; 
 struct cg_list_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct css_set*) ; 

__attribute__((used)) static int FUNC4(struct cgroup *cgrp, struct css_set *cg,
			    struct list_head *newcg_list)
{
	struct css_set *newcg;
	struct cg_list_entry *cg_entry;

	/* ensure a new css_set will exist for this thread */
	newcg = FUNC0(cg, cgrp);
	if (!newcg)
		return -ENOMEM;
	/* add it to the list */
	cg_entry = FUNC1(sizeof(struct cg_list_entry), GFP_KERNEL);
	if (!cg_entry) {
		FUNC3(newcg);
		return -ENOMEM;
	}
	cg_entry->cg = newcg;
	FUNC2(&cg_entry->links, newcg_list);
	return 0;
}