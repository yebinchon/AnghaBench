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
struct task_struct {int dummy; } ;
struct remote_function_call {int /*<<< orphan*/  info; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ret; struct task_struct* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct remote_function_call *tfc = data;
	struct task_struct *p = tfc->p;

	if (p) {
		tfc->ret = -EAGAIN;
		if (FUNC2(p) != FUNC0() || !FUNC3(p))
			return;
	}

	tfc->ret = tfc->func(tfc->info);
}