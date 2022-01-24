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
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vmap_area* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vmap_area*) ; 

__attribute__((used)) static void FUNC3(unsigned long addr)
{
	struct vmap_area *va;

	va = FUNC1(addr);
	FUNC0(!va);
	FUNC2(va);
}