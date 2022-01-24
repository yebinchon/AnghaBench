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
struct srcu_struct {int /*<<< orphan*/ * per_cpu_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct srcu_struct*) ; 

void FUNC3(struct srcu_struct *sp)
{
	int sum;

	sum = FUNC2(sp);
	FUNC0(sum);  /* Leakage unless caller handles error. */
	if (sum != 0)
		return;
	FUNC1(sp->per_cpu_ref);
	sp->per_cpu_ref = NULL;
}