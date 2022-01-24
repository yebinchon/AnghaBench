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
struct delayed_work {int /*<<< orphan*/  work; int /*<<< orphan*/  timer; } ;
struct cpu_workqueue_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_workqueue_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  keventd_wq ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cpu_workqueue_struct* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct delayed_work *dwork)
{
	if (FUNC1(&dwork->timer)) {
		struct cpu_workqueue_struct *cwq;
		cwq = FUNC5(keventd_wq, FUNC3());
		FUNC0(cwq, &dwork->work);
		FUNC4();
	}
	FUNC2(&dwork->work);
}