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
struct thread_pool_worker {int /*<<< orphan*/  worker_entry; scalar_t__ has_data; int /*<<< orphan*/  need_exit; struct thread_pool* pool; } ;
struct thread_pool {int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread_num; int /*<<< orphan*/  wait; int /*<<< orphan*/  ready_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct thread_pool_worker*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct thread_pool_worker *w)
{
	struct thread_pool *p = w->pool;

	FUNC2(&p->thread_lock);

	if (!w->need_exit) {
		FUNC1(&w->worker_entry, &p->ready_list);
		w->has_data = 0;
		FUNC3(&p->thread_lock);

		FUNC5(&p->wait);
	} else {
		p->thread_num--;
		FUNC0(&w->worker_entry);
		FUNC3(&p->thread_lock);

		FUNC4(w);
	}
}