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
struct rcu_torture {int rtort_pipe_count; int rtort_mbtest; } ;
struct TYPE_2__ {long (* completed ) () ;int /*<<< orphan*/  (* deferred_free ) (struct rcu_torture*) ;} ;
typedef  int /*<<< orphan*/  DEFINE_RCU_RANDOM ;

/* Variables and functions */
 scalar_t__ FULLSTOP_DONTSTOP ; 
 int RCU_TORTURE_PIPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ fullstop ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_torture*,struct rcu_torture*) ; 
 long FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct rcu_torture* FUNC7 () ; 
 struct rcu_torture* rcu_torture_current ; 
 int /*<<< orphan*/  rcu_torture_current_version ; 
 int /*<<< orphan*/ * rcu_torture_wcount ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct rcu_torture*) ; 
 long FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(void *arg)
{
	int i;
	long oldbatch = FUNC4();
	struct rcu_torture *rp;
	struct rcu_torture *old_rp;
	static DEFINE_RCU_RANDOM(rand);

	FUNC0("rcu_torture_writer task started");
	FUNC10(current, 19);

	do {
		FUNC9(1);
		rp = FUNC7();
		if (rp == NULL)
			continue;
		rp->rtort_pipe_count = 0;
		FUNC14(FUNC5(&rand) & 0x3ff);
		old_rp = rcu_torture_current;
		rp->rtort_mbtest = 1;
		FUNC3(rcu_torture_current, rp);
		FUNC11(); /* Mods to old_rp must follow rcu_assign_pointer() */
		if (old_rp) {
			i = old_rp->rtort_pipe_count;
			if (i > RCU_TORTURE_PIPE_LEN)
				i = RCU_TORTURE_PIPE_LEN;
			FUNC1(&rcu_torture_wcount[i]);
			old_rp->rtort_pipe_count++;
			cur_ops->deferred_free(old_rp);
		}
		rcu_torture_current_version++;
		oldbatch = cur_ops->completed();
		FUNC6("rcu_torture_writer");
	} while (!FUNC2() && fullstop == FULLSTOP_DONTSTOP);
	FUNC0("rcu_torture_writer task stopping");
	FUNC8("rcu_torture_writer");
	while (!FUNC2())
		FUNC9(1);
	return 0;
}