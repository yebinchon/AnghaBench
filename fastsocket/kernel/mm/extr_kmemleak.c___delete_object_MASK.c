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
struct kmemleak_object {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  use_count; int /*<<< orphan*/  object_list; int /*<<< orphan*/  tree_node; } ;

/* Variables and functions */
 int OBJECT_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  object_tree_root ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct kmemleak_object *object)
{
	unsigned long flags;

	FUNC7(&kmemleak_lock, flags);
	FUNC3(&object_tree_root, &object->tree_node);
	FUNC2(&object->object_list);
	FUNC8(&kmemleak_lock, flags);

	FUNC0(!(object->flags & OBJECT_ALLOCATED));
	FUNC0(FUNC1(&object->use_count) < 2);

	/*
	 * Locking here also ensures that the corresponding memory block
	 * cannot be freed when it is being scanned.
	 */
	FUNC5(&object->lock, flags);
	object->flags &= ~OBJECT_ALLOCATED;
	FUNC6(&object->lock, flags);
	FUNC4(object);
}