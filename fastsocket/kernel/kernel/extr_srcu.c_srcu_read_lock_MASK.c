#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct srcu_struct {int completed; int /*<<< orphan*/  per_cpu_ref; } ;
struct TYPE_2__ {int /*<<< orphan*/ * c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct srcu_struct *sp)
{
	int idx;

	FUNC2();
	idx = sp->completed & 0x1;
	FUNC0();  /* ensure compiler looks -once- at sp->completed. */
	FUNC1(sp->per_cpu_ref, FUNC4())->c[idx]++;
	FUNC5();  /* ensure compiler won't misorder critical section. */
	FUNC3();
	return idx;
}