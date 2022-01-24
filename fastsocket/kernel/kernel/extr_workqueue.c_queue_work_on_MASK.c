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
struct work_struct {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue_struct*,int) ; 

int
FUNC6(int cpu, struct workqueue_struct *wq, struct work_struct *work)
{
	int ret = 0;

	if (!FUNC3(WORK_STRUCT_PENDING, FUNC4(work))) {
		FUNC0(!FUNC2(&work->entry));
		FUNC1(FUNC5(wq, cpu), work);
		ret = 1;
	}
	return ret;
}