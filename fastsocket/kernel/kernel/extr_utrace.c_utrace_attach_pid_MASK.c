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
struct utrace_engine_ops {int dummy; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 struct utrace_engine* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct task_struct* FUNC1 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct utrace_engine* FUNC3 (struct task_struct*,int,struct utrace_engine_ops const*,void*) ; 

struct utrace_engine *FUNC4(
	struct pid *pid, int flags,
	const struct utrace_engine_ops *ops, void *data)
{
	struct utrace_engine *engine = FUNC0(-ESRCH);
	struct task_struct *task = FUNC1(pid, PIDTYPE_PID);
	if (task) {
		engine = FUNC3(task, flags, ops, data);
		FUNC2(task);
	}
	return engine;
}