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
struct kmemleak_object {int flags; int /*<<< orphan*/  rcu; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int OBJECT_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_object_rcu ; 

__attribute__((used)) static void FUNC3(struct kmemleak_object *object)
{
	if (!FUNC1(&object->use_count))
		return;

	/* should only get here after delete_object was called */
	FUNC0(object->flags & OBJECT_ALLOCATED);

	FUNC2(&object->rcu, free_object_rcu);
}