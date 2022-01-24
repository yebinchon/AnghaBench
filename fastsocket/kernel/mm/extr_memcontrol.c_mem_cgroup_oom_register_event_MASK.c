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
struct mem_cgroup_eventfd_list {int /*<<< orphan*/  list; struct eventfd_ctx* eventfd; } ;
struct mem_cgroup {int /*<<< orphan*/  under_oom; int /*<<< orphan*/  oom_notify; } ;
struct eventfd_ctx {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int _OOM_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct eventfd_ctx*,int) ; 
 struct mem_cgroup_eventfd_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mem_cgroup* FUNC6 (struct cgroup*) ; 
 int /*<<< orphan*/  memcg_oom_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cgroup *cgrp,
	struct cftype *cft, struct eventfd_ctx *eventfd, const char *args)
{
	struct mem_cgroup *memcg = FUNC6(cgrp);
	struct mem_cgroup_eventfd_list *event;
	int type = FUNC1(cft->private);

	FUNC0(type != _OOM_TYPE);
	event = FUNC4(sizeof(*event),	GFP_KERNEL);
	if (!event)
		return -ENOMEM;

	FUNC7(&memcg_oom_lock);

	event->eventfd = eventfd;
	FUNC5(&event->list, &memcg->oom_notify);

	/* already in OOM ? */
	if (FUNC2(&memcg->under_oom))
		FUNC3(eventfd, 1);
	FUNC8(&memcg_oom_lock);

	return 0;
}