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
struct css_id {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  id; struct css_id* css; } ;
struct cgroup_subsys_state {struct css_id* id; } ;
struct cgroup_subsys {int /*<<< orphan*/  id_lock; int /*<<< orphan*/  idr; int /*<<< orphan*/  use_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __free_css_id_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct css_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cgroup_subsys *ss, struct cgroup_subsys_state *css)
{
	struct css_id *id = css->id;
	/* When this is called before css_id initialization, id can be NULL */
	if (!id)
		return;

	FUNC0(!ss->use_id);

	FUNC3(id->css, NULL);
	FUNC3(css->id, NULL);
	FUNC4(&ss->id_lock);
	FUNC2(&ss->idr, id->id);
	FUNC5(&ss->id_lock);
	FUNC1(&id->rcu_head, __free_css_id_cb);
}