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
struct file {int (* register_event ) (struct cgroup*,struct file*,struct file*,char const*) ;int /*<<< orphan*/  (* unregister_event ) (struct cgroup*,struct file*,struct file*) ;TYPE_1__* f_op; } ;
struct cgroup_event {struct file* eventfd; int /*<<< orphan*/  list; struct file* cft; int /*<<< orphan*/  pt; int /*<<< orphan*/  remove; int /*<<< orphan*/  wait; struct cgroup* cgrp; } ;
struct cgroup {int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  event_list; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int POLLHUP ; 
 int FUNC4 (struct file*) ; 
 struct file* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  cgroup_event_ptable_queue_proc ; 
 int /*<<< orphan*/  cgroup_event_remove ; 
 int /*<<< orphan*/  cgroup_event_wake ; 
 struct file* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct file* FUNC8 (unsigned int) ; 
 struct file* FUNC9 (unsigned int) ; 
 int FUNC10 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cgroup_event*) ; 
 struct cgroup_event* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC17 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct cgroup*,struct file*,struct file*,char const*) ; 
 int FUNC21 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct cgroup*,struct file*,struct file*) ; 

__attribute__((used)) static int FUNC23(struct cgroup *cgrp, struct cftype *cft,
				      const char *buffer)
{
	struct cgroup_event *event = NULL;
	unsigned int efd, cfd;
	struct file *efile = NULL;
	struct file *cfile = NULL;
	char *endp;
	int ret;

	efd = FUNC17(buffer, &endp, 10);
	if (*endp != ' ')
		return -EINVAL;
	buffer = endp + 1;

	cfd = FUNC17(buffer, &endp, 10);
	if ((*endp != ' ') && (*endp != '\0'))
		return -EINVAL;
	buffer = endp + 1;

	event = FUNC15(sizeof(*event), GFP_KERNEL);
	if (!event)
		return -ENOMEM;
	event->cgrp = cgrp;
	FUNC0(&event->list);
	FUNC12(&event->pt, cgroup_event_ptable_queue_proc);
	FUNC13(&event->wait, cgroup_event_wake);
	FUNC1(&event->remove, cgroup_event_remove);

	efile = FUNC8(efd);
	if (FUNC2(efile)) {
		ret = FUNC4(efile);
		goto fail;
	}

	event->eventfd = FUNC6(efile);
	if (FUNC2(event->eventfd)) {
		ret = FUNC4(event->eventfd);
		goto fail;
	}

	cfile = FUNC9(cfd);
	if (!cfile) {
		ret = -EBADF;
		goto fail;
	}

	/* the process need read permission on control file */
	ret = FUNC10(cfile, MAY_READ);
	if (ret < 0)
		goto fail;

	event->cft = FUNC5(cfile);
	if (FUNC2(event->cft)) {
		ret = FUNC4(event->cft);
		goto fail;
	}

	if (!event->cft->register_event || !event->cft->unregister_event) {
		ret = -EINVAL;
		goto fail;
	}

	ret = event->cft->register_event(cgrp, event->cft,
			event->eventfd, buffer);
	if (ret)
		goto fail;

	if (efile->f_op->poll(efile, &event->pt) & POLLHUP) {
		event->cft->unregister_event(cgrp, event->cft, event->eventfd);
		ret = 0;
		goto fail;
	}

	FUNC18(&cgrp->event_list_lock);
	FUNC16(&event->list, &cgrp->event_list);
	FUNC19(&cgrp->event_list_lock);

	FUNC11(cfile);
	FUNC11(efile);

	return 0;

fail:
	if (cfile)
		FUNC11(cfile);

	if (event && event->eventfd && !FUNC2(event->eventfd))
		FUNC7(event->eventfd);

	if (!FUNC3(efile))
		FUNC11(efile);

	FUNC14(event);

	return ret;
}