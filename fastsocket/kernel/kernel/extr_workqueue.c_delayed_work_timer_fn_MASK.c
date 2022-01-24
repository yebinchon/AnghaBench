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
struct workqueue_struct {int dummy; } ;
struct delayed_work {int /*<<< orphan*/  work; } ;
struct cpu_workqueue_struct {struct workqueue_struct* wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cpu_workqueue_struct* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long __data)
{
	struct delayed_work *dwork = (struct delayed_work *)__data;
	struct cpu_workqueue_struct *cwq = FUNC1(&dwork->work);
	struct workqueue_struct *wq = cwq->wq;

	FUNC0(FUNC3(wq, FUNC2()), &dwork->work);
}