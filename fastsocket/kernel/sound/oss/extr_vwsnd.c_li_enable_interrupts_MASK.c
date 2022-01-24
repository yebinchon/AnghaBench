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
typedef  int /*<<< orphan*/  lithium_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  LI_INTR_MASK ; 
 int /*<<< orphan*/  LI_INTR_STATUS ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(lithium_t *lith, unsigned int mask)
{
	FUNC0("(lith=0x%p, mask=0x%x)\n", lith, mask);

	/* clear any already-pending interrupts. */

	FUNC2(lith, LI_INTR_STATUS, mask);

	/* enable the interrupts. */

	mask |= FUNC1(lith, LI_INTR_MASK);
	FUNC2(lith, LI_INTR_MASK, mask);
}