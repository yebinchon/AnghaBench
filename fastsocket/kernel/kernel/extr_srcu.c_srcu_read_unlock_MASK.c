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
struct srcu_struct {int /*<<< orphan*/  per_cpu_ref; } ;
struct TYPE_2__ {int /*<<< orphan*/ * c; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct srcu_struct *sp, int idx)
{
	FUNC1();
	FUNC4();  /* ensure compiler won't misorder critical section. */
	FUNC0(sp->per_cpu_ref, FUNC3())->c[idx]--;
	FUNC2();
}