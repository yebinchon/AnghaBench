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

/* Variables and functions */
 int FUNC0 (int,struct workqueue_struct*,struct delayed_work*,unsigned long) ; 
 int FUNC1 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 

int FUNC2(struct workqueue_struct *wq,
			struct delayed_work *dwork, unsigned long delay)
{
	if (delay == 0)
		return FUNC1(wq, &dwork->work);

	return FUNC0(-1, wq, dwork, delay);
}