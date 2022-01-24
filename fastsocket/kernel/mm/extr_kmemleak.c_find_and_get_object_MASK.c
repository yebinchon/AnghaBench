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
struct kmemleak_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 struct kmemleak_object* FUNC1 (unsigned long,int) ; 
 unsigned long max_addr ; 
 unsigned long min_addr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct kmemleak_object *FUNC6(unsigned long ptr, int alias)
{
	unsigned long flags;
	struct kmemleak_object *object = NULL;

	FUNC2();
	FUNC4(&kmemleak_lock, flags);
	if (ptr >= min_addr && ptr < max_addr)
		object = FUNC1(ptr, alias);
	FUNC5(&kmemleak_lock, flags);

	/* check whether the object is still available */
	if (object && !FUNC0(object))
		object = NULL;
	FUNC3();

	return object;
}