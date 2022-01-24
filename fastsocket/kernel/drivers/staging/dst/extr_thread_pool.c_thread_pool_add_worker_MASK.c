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
struct thread_pool_worker {void (* cleanup ) (void*) ;unsigned int id; void* thread; int /*<<< orphan*/  worker_entry; void* private; int /*<<< orphan*/  wait; struct thread_pool* pool; } ;
struct thread_pool {int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread_num; int /*<<< orphan*/  ready_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_pool_worker*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,struct thread_pool_worker*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct thread_pool_worker* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_pool_worker_func ; 

int FUNC10(struct thread_pool *p,
		char *name,
		unsigned int id,
		void *(* init)(void *private),
		void (* cleanup)(void *private),
		void *private)
{
	struct thread_pool_worker *w;
	int err = -ENOMEM;

	w = FUNC6(sizeof(struct thread_pool_worker), GFP_KERNEL);
	if (!w)
		goto err_out_exit;

	w->pool = p;
	FUNC2(&w->wait);
	w->cleanup = cleanup;
	w->id = id;

	w->thread = FUNC4(thread_pool_worker_func, w, "%s", name);
	if (FUNC0(w->thread)) {
		err = FUNC1(w->thread);
		goto err_out_free;
	}

	w->private = init(private);
	if (FUNC0(w->private)) {
		err = FUNC1(w->private);
		goto err_out_stop_thread;
	}

	FUNC8(&p->thread_lock);
	FUNC7(&w->worker_entry, &p->ready_list);
	p->thread_num++;
	FUNC9(&p->thread_lock);

	return 0;

err_out_stop_thread:
	FUNC5(w->thread);
err_out_free:
	FUNC3(w);
err_out_exit:
	return err;
}