#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  task_list; int /*<<< orphan*/  private; int /*<<< orphan*/  func; scalar_t__ flags; } ;
struct oom_wait_info {TYPE_1__ wait; struct mem_cgroup* mem; } ;
struct mem_cgroup {scalar_t__ oom_kill_disable; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 int FUNC4 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  memcg_oom_lock ; 
 int /*<<< orphan*/  memcg_oom_waitq ; 
 int /*<<< orphan*/  memcg_oom_wake_function ; 
 int /*<<< orphan*/  FUNC9 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

bool FUNC16(struct mem_cgroup *mem, gfp_t mask)
{
	struct oom_wait_info owait;
	bool locked, need_to_kill;

	owait.mem = mem;
	owait.wait.flags = 0;
	owait.wait.func = memcg_oom_wake_function;
	owait.wait.private = current;
	FUNC0(&owait.wait.task_list);
	need_to_kill = true;
	FUNC3(mem);

	/* At first, try to OOM lock hierarchy under mem.*/
	FUNC13(&memcg_oom_lock);
	locked = FUNC4(mem);
	/*
	 * Even if signal_pending(), we can't quit charge() loop without
	 * accounting. So, UNINTERRUPTIBLE is appropriate. But SIGKILL
	 * under OOM is always welcomed, use TASK_KILLABLE here.
	 */
	FUNC10(&memcg_oom_waitq, &owait.wait, TASK_KILLABLE);
	if (!locked || mem->oom_kill_disable)
		need_to_kill = false;
	if (locked)
		FUNC5(mem);
	FUNC14(&memcg_oom_lock);

	if (need_to_kill) {
		FUNC2(&memcg_oom_waitq, &owait.wait);
		FUNC7(mem, mask);
	} else {
		FUNC11();
		FUNC2(&memcg_oom_waitq, &owait.wait);
	}
	FUNC13(&memcg_oom_lock);
	if (locked)
		FUNC6(mem);
	FUNC9(mem);
	FUNC14(&memcg_oom_lock);

	FUNC8(mem);

	if (FUNC15(TIF_MEMDIE) || FUNC1(current))
		return false;
	/* Give chance to dying process */
	FUNC12(1);
	return true;
}