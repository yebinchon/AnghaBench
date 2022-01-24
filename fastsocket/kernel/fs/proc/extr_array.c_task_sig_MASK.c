#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  signal; } ;
struct task_struct {TYPE_5__* signal; int /*<<< orphan*/  blocked; TYPE_1__ pending; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_12__ {TYPE_3__* user; } ;
struct TYPE_8__ {int /*<<< orphan*/  signal; } ;
struct TYPE_11__ {TYPE_4__* rlim; int /*<<< orphan*/  count; TYPE_2__ shared_pending; } ;
struct TYPE_10__ {unsigned long rlim_cur; } ;
struct TYPE_9__ {int /*<<< orphan*/  sigpending; } ;

/* Variables and functions */
 size_t RLIMIT_SIGPENDING ; 
 TYPE_6__* FUNC0 (struct task_struct*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static inline void FUNC8(struct seq_file *m, struct task_struct *p)
{
	unsigned long flags;
	sigset_t pending, shpending, blocked, ignored, caught;
	int num_threads = 0;
	unsigned long qsize = 0;
	unsigned long qlim = 0;

	FUNC6(&pending);
	FUNC6(&shpending);
	FUNC6(&blocked);
	FUNC6(&ignored);
	FUNC6(&caught);

	if (FUNC3(p, &flags)) {
		pending = p->pending.signal;
		shpending = p->signal->shared_pending.signal;
		blocked = p->blocked;
		FUNC2(p, &ignored, &caught);
		num_threads = FUNC1(&p->signal->count);
		qsize = FUNC1(&FUNC0(p)->user->sigpending);
		qlim = p->signal->rlim[RLIMIT_SIGPENDING].rlim_cur;
		FUNC7(p, &flags);
	}

	FUNC5(m, "Threads:\t%d\n", num_threads);
	FUNC5(m, "SigQ:\t%lu/%lu\n", qsize, qlim);

	/* render them all */
	FUNC4(m, "SigPnd:\t", &pending);
	FUNC4(m, "ShdPnd:\t", &shpending);
	FUNC4(m, "SigBlk:\t", &blocked);
	FUNC4(m, "SigIgn:\t", &ignored);
	FUNC4(m, "SigCgt:\t", &caught);
}