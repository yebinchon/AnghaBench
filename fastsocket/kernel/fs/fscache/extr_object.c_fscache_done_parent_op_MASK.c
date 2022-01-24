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
struct fscache_object {scalar_t__ n_ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  n_obj_ops; int /*<<< orphan*/  debug_id; struct fscache_object* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_OBJECT_EV_CLEARED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct fscache_object *object)
{
	struct fscache_object *parent = object->parent;

	FUNC0("OBJ%x {OBJ%x,%x}",
	       object->debug_id, parent->debug_id, parent->n_ops);

	FUNC2(&parent->lock, 1);
	parent->n_obj_ops--;
	parent->n_ops--;
	if (parent->n_ops == 0)
		FUNC1(parent, FSCACHE_OBJECT_EV_CLEARED);
	FUNC3(&parent->lock);
}