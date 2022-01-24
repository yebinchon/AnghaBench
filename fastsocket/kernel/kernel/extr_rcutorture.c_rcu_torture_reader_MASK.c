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
struct timer_list {int dummy; } ;
struct rcu_torture {scalar_t__ rtort_mbtest; int rtort_pipe_count; } ;
struct TYPE_2__ {int (* readlock ) () ;int (* completed ) () ;scalar_t__ irq_capable; int /*<<< orphan*/  (* readunlock ) (int) ;int /*<<< orphan*/  (* read_delay ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FULLSTOP_DONTSTOP ; 
 int /*<<< orphan*/  HZ ; 
 int RCU_TORTURE_PIPE_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*) ; 
 scalar_t__ fullstop ; 
 scalar_t__ irqreader ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timer_list*,int) ; 
 int /*<<< orphan*/  n_rcu_torture_mberror ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  rand ; 
 struct rcu_torture* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  rcu_torture_batch ; 
 int /*<<< orphan*/  rcu_torture_count ; 
 int /*<<< orphan*/  rcu_torture_current ; 
 int /*<<< orphan*/  rcu_torture_timer ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 () ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct timer_list*) ; 

__attribute__((used)) static int
FUNC24(void *arg)
{
	int completed;
	int idx;
	FUNC0(rand);
	struct rcu_torture *p;
	int pipe_count;
	struct timer_list t;

	FUNC1("rcu_torture_reader task started");
	FUNC15(current, 19);
	if (irqreader && cur_ops->irq_capable)
		FUNC16(&t, rcu_torture_timer, 0);

	do {
		if (irqreader && cur_ops->irq_capable) {
			if (!FUNC23(&t))
				FUNC6(&t, 1);
		}
		idx = cur_ops->readlock();
		completed = cur_ops->completed();
		p = FUNC9(rcu_torture_current);
		if (p == NULL) {
			/* Wait for rcu_torture_writer to get underway */
			cur_ops->readunlock(idx);
			FUNC13(HZ);
			continue;
		}
		if (p->rtort_mbtest == 0)
			FUNC3(&n_rcu_torture_mberror);
		cur_ops->read_delay(&rand);
		FUNC7();
		pipe_count = p->rtort_pipe_count;
		if (pipe_count > RCU_TORTURE_PIPE_LEN) {
			/* Should not happen, but... */
			pipe_count = RCU_TORTURE_PIPE_LEN;
		}
		++FUNC2(rcu_torture_count)[pipe_count];
		completed = cur_ops->completed() - completed;
		if (completed > RCU_TORTURE_PIPE_LEN) {
			/* Should not happen, but... */
			completed = RCU_TORTURE_PIPE_LEN;
		}
		++FUNC2(rcu_torture_batch)[completed];
		FUNC8();
		cur_ops->readunlock(idx);
		FUNC12();
		FUNC10("rcu_torture_reader");
	} while (!FUNC5() && fullstop == FULLSTOP_DONTSTOP);
	FUNC1("rcu_torture_reader task stopping");
	FUNC11("rcu_torture_reader");
	if (irqreader && cur_ops->irq_capable)
		FUNC4(&t);
	while (!FUNC5())
		FUNC14(1);
	return 0;
}