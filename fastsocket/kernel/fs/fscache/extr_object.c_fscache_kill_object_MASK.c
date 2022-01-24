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
struct fscache_state {int dummy; } ;
struct fscache_object {scalar_t__ n_ops; scalar_t__ n_children; scalar_t__ n_in_progress; int /*<<< orphan*/  dependents; int /*<<< orphan*/  lock; scalar_t__ oob_event_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_OBJECT ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_IS_LIVE ; 
 int /*<<< orphan*/  KILL_DEPENDENTS ; 
 int /*<<< orphan*/  WAIT_FOR_CLEARANCE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_object*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fscache_state const* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC7(struct fscache_object *object,
						       int event)
{
	FUNC0("{OBJ%x,%d,%d},%d",
	       object->debug_id, object->n_ops, object->n_children, event);

	FUNC1(FSCACHE_OBJECT_IS_LIVE, &object->flags);
	object->oob_event_mask = 0;

	if (FUNC3(&object->dependents) &&
	    object->n_ops == 0 &&
	    object->n_children == 0)
		return FUNC6(DROP_OBJECT);

	if (object->n_in_progress == 0) {
		FUNC4(&object->lock);
		if (object->n_ops > 0 && object->n_in_progress == 0)
			FUNC2(object);
		FUNC5(&object->lock);
	}

	if (!FUNC3(&object->dependents))
		return FUNC6(KILL_DEPENDENTS);

	return FUNC6(WAIT_FOR_CLEARANCE);
}