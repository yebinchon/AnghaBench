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
struct fscache_state {int dummy; } ;
struct fscache_object {scalar_t__ n_children; struct fscache_object* parent; int /*<<< orphan*/  lock; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  cache_link; int /*<<< orphan*/  cookie_link; struct fscache_cache* cache; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct fscache_cache {TYPE_1__* ops; int /*<<< orphan*/  object_list_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* drop_object ) (struct fscache_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_INVALIDATING ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_EV_CLEARED ; 
 int /*<<< orphan*/  OBJECT_DEAD ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fscache_n_cop_drop_object ; 
 int /*<<< orphan*/  fscache_n_object_dead ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fscache_object*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fscache_state const* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC17(struct fscache_object *object,
						       int event)
{
	struct fscache_object *parent = object->parent;
	struct fscache_cookie *cookie = object->cookie;
	struct fscache_cache *cache = object->cache;
	bool awaken = false;

	FUNC2("{OBJ%x,%d},%d", object->debug_id, object->n_children, event);

	FUNC0(cookie != NULL);
	FUNC0(!FUNC9(&object->cookie_link));

	/* Make sure the cookie no longer points here and that the netfs isn't
	 * waiting for us.
	 */
	FUNC11(&cookie->lock);
	FUNC8(&object->cookie_link);
	if (FUNC14(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
		awaken = true;
	FUNC12(&cookie->lock);

	if (awaken)
		FUNC16(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);

	/* Prevent a race with our last child, which has to signal EV_CLEARED
	 * before dropping our spinlock.
	 */
	FUNC11(&object->lock);
	FUNC12(&object->lock);

	/* Discard from the cache's collection of objects */
	FUNC11(&cache->object_list_lock);
	FUNC10(&object->cache_link);
	FUNC12(&cache->object_list_lock);

	FUNC6(&fscache_n_cop_drop_object);
	cache->ops->drop_object(object);
	FUNC7(&fscache_n_cop_drop_object);

	/* The parent object wants to know when all it dependents have gone */
	if (parent) {
		FUNC1("release parent OBJ%x {%d}",
		       parent->debug_id, parent->n_children);

		FUNC11(&parent->lock);
		parent->n_children--;
		if (parent->n_children == 0)
			FUNC5(parent, FSCACHE_OBJECT_EV_CLEARED);
		FUNC12(&parent->lock);
		object->parent = NULL;
	}

	/* this just shifts the object release to the slow work processor */
	FUNC4(object);
	FUNC6(&fscache_n_object_dead);

	FUNC3("");
	return FUNC15(OBJECT_DEAD);
}