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
struct thread_pool {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct thread_pool*,int (*) (void*,void*),int (*) (void*,void*),void*,long,int /*<<< orphan*/ *) ; 

int FUNC1(struct thread_pool *p,
		int (* setup)(void *private, void *data),
		int (* action)(void *private, void *data),
		void *data, long timeout)
{
	return FUNC0(p, setup,
			action, data, timeout, NULL);
}