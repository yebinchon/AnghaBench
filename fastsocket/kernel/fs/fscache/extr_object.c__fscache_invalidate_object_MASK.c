#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fscache_state {int dummy; } ;
struct fscache_operation {int flags; } ;
struct fscache_object {int /*<<< orphan*/  flags; TYPE_3__* cache; struct fscache_cookie* cookie; int /*<<< orphan*/  debug_id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rnode; } ;
struct fscache_cookie {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; TYPE_1__ stores; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  invalidate_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_INVALIDATING ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_NO_DATA_YET ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_RETIRED ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_IS_LIVE ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_PENDING_WRITE ; 
 int FSCACHE_OP_EXCLUSIVE ; 
 int FSCACHE_OP_SLOW ; 
 int FSCACHE_OP_UNUSE_COOKIE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KILL_OBJECT ; 
 int /*<<< orphan*/  UPDATE_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_operation*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_operation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fscache_operation*) ; 
 int /*<<< orphan*/  FUNC9 (struct fscache_operation*,char*) ; 
 scalar_t__ FUNC10 (struct fscache_object*,struct fscache_operation*) ; 
 int /*<<< orphan*/  FUNC11 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC13 (struct fscache_operation*) ; 
 struct fscache_operation* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fscache_state const* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC21(struct fscache_object *object,
							      int event)
{
	struct fscache_operation *op;
	struct fscache_cookie *cookie = object->cookie;

	FUNC1("{OBJ%x},%d", object->debug_id, event);

	/* We're going to need the cookie.  If the cookie is not available then
	 * retire the object instead.
	 */
	if (!FUNC12(object)) {
		FUNC0(object->cookie->stores.rnode == NULL);
		FUNC15(FSCACHE_COOKIE_RETIRED, &cookie->flags);
		FUNC2(" [no cookie]");
		return FUNC19(KILL_OBJECT);
	}

	/* Reject any new read/write ops and abort any that are pending. */
	FUNC5(cookie);
	FUNC3(FSCACHE_OBJECT_PENDING_WRITE, &object->flags);
	FUNC4(object);

	/* Now we have to wait for in-progress reads and writes */
	op = FUNC14(sizeof(*op), GFP_KERNEL);
	if (!op)
		goto nomem;

	FUNC6(op, NULL);
	FUNC7(op, object->cache->ops->invalidate_object);
	op->flags = FSCACHE_OP_SLOW |
		(1 << FSCACHE_OP_EXCLUSIVE) |
		(1 << FSCACHE_OP_UNUSE_COOKIE);
	FUNC9(op, "Inval");

	FUNC16(&cookie->lock);
	if (FUNC10(object, op) < 0)
		goto submit_op_failed;
	FUNC17(&cookie->lock);
	FUNC8(op);

	/* Once we've completed the invalidation, we know there will be no data
	 * stored in the cache and thus we can reinstate the data-check-skip
	 * optimisation.
	 */
	FUNC15(FSCACHE_COOKIE_NO_DATA_YET, &cookie->flags);

	/* We can allow read and write requests to come in once again.  They'll
	 * queue up behind our exclusive invalidation operation.
	 */
	if (FUNC18(FSCACHE_COOKIE_INVALIDATING, &cookie->flags))
		FUNC20(&cookie->flags, FSCACHE_COOKIE_INVALIDATING);
	FUNC2(" [ok]");
	return FUNC19(UPDATE_OBJECT);

nomem:
	FUNC3(FSCACHE_OBJECT_IS_LIVE, &object->flags);
	FUNC11(object);
	FUNC2(" [ENOMEM]");
	return FUNC19(KILL_OBJECT);

submit_op_failed:
	FUNC3(FSCACHE_OBJECT_IS_LIVE, &object->flags);
	FUNC17(&cookie->lock);
	FUNC13(op);
	FUNC2(" [EIO]");
	return FUNC19(KILL_OBJECT);
}