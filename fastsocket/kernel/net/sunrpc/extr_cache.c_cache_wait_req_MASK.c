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
struct cache_deferred_req {int /*<<< orphan*/  hash; int /*<<< orphan*/  revisit; } ;
struct thread_deferred_req {int /*<<< orphan*/  completion; struct cache_deferred_req handle; } ;
struct cache_req {int /*<<< orphan*/  thread_wait; } ;
struct cache_head {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_deferred_req*) ; 
 int /*<<< orphan*/  cache_defer_lock ; 
 int /*<<< orphan*/  cache_restart_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_deferred_req*,struct cache_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct cache_req *req, struct cache_head *item)
{
	struct thread_deferred_req sleeper;
	struct cache_deferred_req *dreq = &sleeper.handle;

	sleeper.completion = FUNC0(sleeper.completion);
	dreq->revisit = cache_restart_thread;

	FUNC3(dreq, item, 0);

	if (!FUNC6(CACHE_PENDING, &item->flags) ||
	    (long)FUNC8(
		    &sleeper.completion, req->thread_wait) <= 0) {
		/* The completion wasn't completed, so we need
		 * to clean up
		 */
		FUNC4(&cache_defer_lock);
		if (!FUNC2(&sleeper.handle.hash)) {
			FUNC1(&sleeper.handle);
			FUNC5(&cache_defer_lock);
		} else {
			/* cache_revisit_request already removed
			 * this from the hash table, but hasn't
			 * called ->revisit yet.  It will very soon
			 * and we need to wait for it.
			 */
			FUNC5(&cache_defer_lock);
			FUNC7(&sleeper.completion);
		}
	}
}