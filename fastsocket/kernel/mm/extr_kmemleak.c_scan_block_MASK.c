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
struct kmemleak_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  gray_list; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 void* BYTES_PER_POINTER ; 
 unsigned long* FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ FUNC1 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct kmemleak_object* FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  gray_list ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kmemleak_object*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(void *_start, void *_end,
		       struct kmemleak_object *scanned, int allow_resched)
{
	unsigned long *ptr;
	unsigned long *start = FUNC0(_start, BYTES_PER_POINTER);
	unsigned long *end = _end - (BYTES_PER_POINTER - 1);

	for (ptr = start; ptr < end; ptr++) {
		struct kmemleak_object *object;
		unsigned long flags;
		unsigned long pointer;

		if (allow_resched)
			FUNC3();
		if (FUNC8())
			break;

		/* don't scan uninitialized memory */
		if (!FUNC5((unsigned long)ptr,
						  BYTES_PER_POINTER))
			continue;

		pointer = *ptr;

		object = FUNC4(pointer, 1);
		if (!object)
			continue;
		if (object == scanned) {
			/* self referenced, ignore */
			FUNC7(object);
			continue;
		}

		/*
		 * Avoid the lockdep recursive warning on object->lock being
		 * previously acquired in scan_object(). These locks are
		 * enclosed by scan_mutex.
		 */
		FUNC9(&object->lock, flags,
					 SINGLE_DEPTH_NESTING);
		if (!FUNC2(object)) {
			/* non-orphan, ignored or new */
			FUNC10(&object->lock, flags);
			FUNC7(object);
			continue;
		}

		/*
		 * Increase the object's reference count (number of pointers
		 * to the memory block). If this count reaches the required
		 * minimum, the object's color will become gray and it will be
		 * added to the gray_list.
		 */
		object->count++;
		if (FUNC1(object))
			FUNC6(&object->gray_list, &gray_list);
		else
			FUNC7(object);
		FUNC10(&object->lock, flags);
	}
}