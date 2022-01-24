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
struct kmemleak_scan_area {unsigned long offset; size_t length; int /*<<< orphan*/  node; } ;
struct kmemleak_object {unsigned long size; int /*<<< orphan*/  lock; int /*<<< orphan*/  area_list; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KMEMLEAK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kmemleak_object*) ; 
 struct kmemleak_object* FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kmemleak_scan_area* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kmemleak_scan_area*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  scan_area_cache ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned long ptr, unsigned long offset,
			  size_t length, gfp_t gfp)
{
	unsigned long flags;
	struct kmemleak_object *object;
	struct kmemleak_scan_area *area;

	object = FUNC2(ptr, 0);
	if (!object) {
		FUNC6("Adding scan area to unknown object at 0x%08lx\n",
			      ptr);
		return;
	}

	area = FUNC4(scan_area_cache, gfp & GFP_KMEMLEAK_MASK);
	if (!area) {
		FUNC6("Cannot allocate a scan area\n");
		goto out;
	}

	FUNC8(&object->lock, flags);
	if (offset + length > object->size) {
		FUNC6("Scan area larger than object 0x%08lx\n", ptr);
		FUNC1(object);
		FUNC5(scan_area_cache, area);
		goto out_unlock;
	}

	FUNC0(&area->node);
	area->offset = offset;
	area->length = length;

	FUNC3(&area->node, &object->area_list);
out_unlock:
	FUNC9(&object->lock, flags);
out:
	FUNC7(object);
}