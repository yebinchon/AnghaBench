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
struct vmap_area {int va_end; int va_start; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_LAZY_FREE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  vmap_lazy_nr ; 

__attribute__((used)) static void FUNC5(struct vmap_area *va)
{
	va->flags |= VM_LAZY_FREE;
	FUNC0((va->va_end - va->va_start) >> PAGE_SHIFT, &vmap_lazy_nr);
	if (FUNC4(FUNC1(&vmap_lazy_nr) > FUNC2()))
		FUNC3();
}