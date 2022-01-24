#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fscache_object {int /*<<< orphan*/  flags; TYPE_1__* state; int /*<<< orphan*/  debug_id; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_COOKIE_LOOKING_UP ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_NO_DATA_YET ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_IS_AVAILABLE ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_IS_LOOKED_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_n_object_created ; 
 int /*<<< orphan*/  fscache_n_object_lookups_positive ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct fscache_object *object)
{
	struct fscache_cookie *cookie = object->cookie;

	FUNC0("{OBJ%x,%s}", object->debug_id, object->state->name);

	/* if we were still looking up, then we must have a positive lookup
	 * result, in which case there may be data available */
	if (!FUNC5(FSCACHE_OBJECT_IS_LOOKED_UP, &object->flags)) {
		FUNC3(&fscache_n_object_lookups_positive);

		/* We do (presumably) have data */
		FUNC2(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);

		/* Allow write requests to begin stacking up and read requests
		 * to begin shovelling data.
		 */
		FUNC2(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags);
		FUNC6(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP);
	} else {
		FUNC3(&fscache_n_object_created);
	}

	FUNC4(FSCACHE_OBJECT_IS_AVAILABLE, &object->flags);
	FUNC1("");
}