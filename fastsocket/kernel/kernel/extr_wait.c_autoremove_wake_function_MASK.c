#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  task_list; } ;
typedef  TYPE_1__ wait_queue_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,unsigned int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
	int ret = FUNC0(wait, mode, sync, key);

	if (ret)
		FUNC1(&wait->task_list);
	return ret;
}