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
struct rcu_torture {scalar_t__ rtort_mbtest; int rtort_pipe_count; } ;
struct TYPE_2__ {int (* readlock ) () ;int (* completed ) () ;int /*<<< orphan*/  (* readunlock ) (int) ;int /*<<< orphan*/  (* read_delay ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;
typedef  int /*<<< orphan*/  DEFINE_RCU_RANDOM ;

/* Variables and functions */
 int RCU_TORTURE_PIPE_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  n_rcu_torture_mberror ; 
 int /*<<< orphan*/  n_rcu_torture_timers ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct rcu_torture* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_torture_batch ; 
 int /*<<< orphan*/  rcu_torture_count ; 
 int /*<<< orphan*/  rcu_torture_current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(unsigned long unused)
{
	int idx;
	int completed;
	static DEFINE_RCU_RANDOM(rand);
	static DEFINE_SPINLOCK(rand_lock);
	struct rcu_torture *p;
	int pipe_count;

	idx = cur_ops->readlock();
	completed = cur_ops->completed();
	p = FUNC4(rcu_torture_current);
	if (p == NULL) {
		/* Leave because rcu_torture_writer is not yet underway */
		cur_ops->readunlock(idx);
		return;
	}
	if (p->rtort_mbtest == 0)
		FUNC1(&n_rcu_torture_mberror);
	FUNC5(&rand_lock);
	cur_ops->read_delay(&rand);
	n_rcu_torture_timers++;
	FUNC6(&rand_lock);
	FUNC2();
	pipe_count = p->rtort_pipe_count;
	if (pipe_count > RCU_TORTURE_PIPE_LEN) {
		/* Should not happen, but... */
		pipe_count = RCU_TORTURE_PIPE_LEN;
	}
	++FUNC0(rcu_torture_count)[pipe_count];
	completed = cur_ops->completed() - completed;
	if (completed > RCU_TORTURE_PIPE_LEN) {
		/* Should not happen, but... */
		completed = RCU_TORTURE_PIPE_LEN;
	}
	++FUNC0(rcu_torture_batch)[completed];
	FUNC3();
	cur_ops->readunlock(idx);
}