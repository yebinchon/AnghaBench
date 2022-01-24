#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fscache_state {int dummy; } ;
struct fscache_object {struct fscache_cookie* cookie; TYPE_2__* cache; scalar_t__ oob_event_mask; int /*<<< orphan*/  debug_id; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* lookup_complete ) (struct fscache_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_COOKIE_LOOKING_UP ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_UNAVAILABLE ; 
 int /*<<< orphan*/  KILL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_object*) ; 
 int /*<<< orphan*/  fscache_n_cop_lookup_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_object*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fscache_state const* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC9(struct fscache_object *object,
							  int event)
{
	struct fscache_cookie *cookie;

	FUNC0("{OBJ%x},%d", object->debug_id, event);

	object->oob_event_mask = 0;

	FUNC2(&fscache_n_cop_lookup_complete);
	object->cache->ops->lookup_complete(object);
	FUNC3(&fscache_n_cop_lookup_complete);

	cookie = object->cookie;
	FUNC4(FSCACHE_COOKIE_UNAVAILABLE, &cookie->flags);
	if (FUNC6(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags))
		FUNC8(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP);

	FUNC1(object);
	return FUNC7(KILL_OBJECT);
}