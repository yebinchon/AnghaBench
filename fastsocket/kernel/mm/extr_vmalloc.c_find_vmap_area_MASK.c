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
struct vmap_area {int dummy; } ;

/* Variables and functions */
 struct vmap_area* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_area_lock ; 

__attribute__((used)) static struct vmap_area *FUNC3(unsigned long addr)
{
	struct vmap_area *va;

	FUNC1(&vmap_area_lock);
	va = FUNC0(addr);
	FUNC2(&vmap_area_lock);

	return va;
}