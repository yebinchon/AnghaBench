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
struct cache_req {struct cache_deferred_req* (* defer ) (struct cache_req*) ;scalar_t__ thread_wait; } ;
struct cache_head {int /*<<< orphan*/  flags; } ;
struct cache_deferred_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_PENDING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cache_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_req*,struct cache_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_deferred_req*,struct cache_head*,int) ; 
 struct cache_deferred_req* FUNC4 (struct cache_req*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct cache_req *req, struct cache_head *item)
{
	struct cache_deferred_req *dreq;

	if (req->thread_wait) {
		FUNC2(req, item);
		if (!FUNC5(CACHE_PENDING, &item->flags))
			return false;
	}
	dreq = req->defer(req);
	if (dreq == NULL)
		return false;
	FUNC3(dreq, item, 1);
	if (!FUNC5(CACHE_PENDING, &item->flags))
		/* Bit could have been cleared before we managed to
		 * set up the deferral, so need to revisit just in case
		 */
		FUNC1(item);

	FUNC0();
	return true;
}